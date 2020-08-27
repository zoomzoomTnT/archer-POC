import 'dart:ui';

import 'package:archer_flutter_ui/constants/styles.dart';
import 'package:archer_flutter_ui/models/datamodel/navbar_item_model.dart';
import 'package:archer_flutter_ui/stacked/locator.dart';
import 'package:archer_flutter_ui/stacked/router.gr.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:footer/footer.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked_services/stacked_services.dart';

import 'package:archer_flutter_ui/widgets/hover_extension.dart';






class _FooterBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  const _FooterBarItem({this.title, this.navigationPath});

  @override
  Widget build(BuildContext context) {
    var model = NavBarItemModel(
      title: title,
      navigationPath: navigationPath,
    );
    return GestureDetector(
        child: Provider.value(
          value: model,
          child: Text(
            title,
            style: TextStyle(fontSize: 15),
          ).showCursorOnHover,
        ),
        onTap: () {
          locator<NavigationService>().navigateTo(navigationPath);
        },
    );
  }
}


/*
*
* class _FooterBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  //final IconData icon;
  const _FooterBarItem({this.title, this.navigationPath/*, this.icon*/});

  @override
  Widget build(BuildContext context) {
    var model = NavBarItemModel(
      title: title,
      navigationPath: navigationPath,
      //iconData: icon,
    );
    return GestureDetector(
      onTap: () {
        locator<NavigationService>().navigateTo(navigationPath);
      },
      child: Provider.value(
        value: model,
        child: Text(
          title,
          style: TextStyle(fontSize: 15),
        ),
      ),
    );
  }
}
*/








class FooterBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Footer(
          backgroundColor: Colors.blue[400],
          padding: EdgeInsets.symmetric(vertical: 50, horizontal: 100),
          child: DefaultTextStyle(
            style: descriptionTextStyle(DeviceScreenType.desktop),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: [
                          Image.network('https://houstondragonacademy.org/img/logo/logo-white.png'),
                        ],),//icon
                      Row(
                        children: <Widget>[
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              _FooterBarItem(title: 'ABOUT', navigationPath: Routes.aboutPage),
                              _FooterBarItem(title: 'News', navigationPath: Routes.aboutPage),
                              _FooterBarItem(title: 'Calendar', navigationPath: Routes.calendarPage),
                              _FooterBarItem(title: 'Business Hour', navigationPath: Routes.businessHourPage),
                              _FooterBarItem(title: 'Career', navigationPath: Routes.careerPage),
                            ],
                        ),
                      Column(
                        children: [
                          Text('PROGRAMS'),
                          Text('Classes'),
                          Text('Parents'),
                          Text('Upcoming Events'),
                          Text('Download'),
                        ],),
                      Column(
                        children: [
                          Text('CONTACT US'),
                          Text('Email: info@houstondragonacademy.org'),
                          Text('Phone: 713-305-9920 713-858-8768'),
                          Text('Headquarters: 8915 Timberside Dr, Houston 77025'),
                          Text('Pearland: 12005 County Rd 59, Pearland 77584'),
                        ],),
                      Column(
                        children: [
                          Text('FOLLOW US'),
                          Row(children: [
                              Icon(FontAwesomeIcons.weixin),
                              Icon(FontAwesomeIcons.facebookSquare),
                            ]),
                          Image.network('https://seal-houston.bbb.org/seals/black-seal-150-110-whitetxt-bbb-90050639.png'),
                        ],),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('© Houston Dragon Academy 2020'),
                      Text('⚡ by Project Archer'),
                    ],
                  ),
                ]),
            ]
          ),
          )
        );
  }
}
