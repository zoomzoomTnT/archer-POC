import 'package:archer_flutter_ui/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:footer/footer.dart';
import 'package:responsive_builder/responsive_builder.dart';

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
                      Column(
                        children: [
                          Text('ABOUT'),
                          Text('News'),
                          Text('Calendar'),
                          Text('Bussiness Hour'),
                          Text('Career'),
                        ],),
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
          ),
        );
  }
}
