import 'package:archer_flutter_ui/widgets/call_to_action.dart';
import 'package:archer_flutter_ui/widgets/course_details.dart';
import 'package:archer_flutter_ui/widgets/page_banner.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          PageBanner(['assets/images/page_banner.jpeg']),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: ScreenTypeLayout(
              mobile: _HomePageMobile(),
              desktop: _HomePageDesktop(),
            ),
          ),
        ]),
//      bottomNavigationBar: Row(
//        mainAxisAlignment: MainAxisAlignment.center,
//        children: <Widget>[
//          Text(
//            'You have pushed the button this many times:',
//          ),
//          Text(
//            '$_counter',
//            style: Theme.of(context).textTheme.headline4,
//          )
//        ],
//      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _incrementCounter();
        },
        tooltip: 'Increment',
        child: Icon(Icons.plus_one),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageDesktop extends StatelessWidget {
  const _HomePageDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        CourseDetails(),
        Expanded(
          child: Center(
            child: CallToAction('Register'),
          ),
        )
      ],
    );
  }
}

class _HomePageMobile extends StatelessWidget {
  const _HomePageMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CourseDetails(),
        SizedBox(
          height: 100,
        ),
        CallToAction('Register'),
      ],
    );
  }
}
