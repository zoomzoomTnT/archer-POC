import 'dart:async';

import 'package:archer_flutter_ui/constants/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class PageBanner extends StatefulWidget {
  final List<String> _images;
  final double height;
  final ValueChanged<int> onTap;
  final Curve curve;
  final String title;
  final String description;
  final bool isRollingBanner;
  final bool hasEnrollButton;

  PageBanner(
      this._images, {
        this.height = 380,
        this.onTap,
        this.curve = Curves.linear,
        this.title = '',
        this.description = '',
        this.isRollingBanner = true,
        this.hasEnrollButton = false,
      }) : assert(_images != null);

  @override
  _PageBannerState createState() => _PageBannerState();
}

class _PageBannerState extends State<PageBanner> {
  PageController _pageController;
  int _curIndex;
  Timer _timer;

  @override
  void initState() {
    super.initState();
    _curIndex = widget._images.length * 5;
    _pageController = PageController(initialPage: _curIndex);
    _initTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        _buildPageView(),
        _buildBannerIndicator(),
        _buildBannerText(),
      ],
    );
  }

  Widget _buildBannerText() {
    var bannerButton = List<Widget>();
    if (widget.hasEnrollButton) {
      bannerButton.add(
          RaisedButton(
            padding: EdgeInsets.symmetric(vertical: 24, horizontal: 36),
            color: Colors.blue[300],
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(36.0)),
            onPressed: () {},
            child: Text('ENROLL NOW',
                style: descriptionTextStyle(DeviceScreenType.desktop),
            ),
          )
      );
      bannerButton.add(
        Container(
          margin: EdgeInsets.symmetric(vertical: 16),
          child: RichText(
            text: TextSpan(
              style: descriptionTextStyle(DeviceScreenType.desktop),
              children: [
                TextSpan(
                  text: 'Enrollment Tutorial: ',
                ),
                TextSpan(
                  text: 'Onsite',
                  style: TextStyle(decoration: TextDecoration.underline),
                  recognizer: new TapGestureRecognizer()
                    ..onTap = () {
                    },
                ),
                TextSpan(
                  text: ' / ',
                ),
                TextSpan(
                  text: 'Online',
                  style: TextStyle(decoration: TextDecoration.underline),
                  recognizer: new TapGestureRecognizer()
                    ..onTap = () {
                    },
                ),
              ],
            ),
          ),
        ));
    }

    return Positioned(
      top: 70,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Text(widget.title,
            style: titleTextStyle(DeviceScreenType.desktop),
          ),
          Container(
            width: 1000,
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 100),
            margin: EdgeInsets.only(bottom: 16),
            child: Text(widget.description,
              textAlign: TextAlign.center,
              style: descriptionTextStyle(DeviceScreenType.desktop),
            )
          ),
          Column(children: bannerButton,),
        ],
      ),
    );
  }

  Widget _buildBannerIndicator() {
    var length = widget._images.length;
    return Positioned(
      bottom: 10,
      child: Row(
        children: widget._images.map((s) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3.0),
            child: ClipOval(
              child: Container(
                width: 8,
                height: 8,
                color: s == widget._images[_curIndex % length]
                    ? Colors.white
                    : Colors.grey,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildPageView() {
    var length = widget._images.length;
    return Container(
      height: widget.height,
      child: PageView.builder(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _curIndex = index;
            if (index == 0) {
              _curIndex = length;
              _changePage();
            }
          });
        },
        itemBuilder: (context, index) {
          return GestureDetector(
            onPanDown: (details) {
              _cancelTimer();
            },
            onTap: () {
              Scaffold.of(context).showSnackBar(
                SnackBar(
                  content: Text('Current page index: ${index % length}'),
                  duration: Duration(milliseconds: 500),
                ),
              );
            },
            child: Image.network(
              widget._images[index % length],
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }

  // Cancel rolling action when banner page onclick
  _cancelTimer() {
    if (_timer != null) {
      _timer.cancel();
      _timer = null;
      _initTimer();
    }
  }

  _initTimer() {
    if (_timer == null) {
      _timer = Timer.periodic(Duration(seconds: 5), (t) {
        _curIndex++;
        _pageController.animateToPage(
          _curIndex,
          duration: Duration(milliseconds: 300),
          curve: Curves.linear,
        );
      });
    }
  }

  _changePage() {
    Timer(Duration(milliseconds: 350), () {
      _pageController.jumpToPage(_curIndex);
    });
  }
}
