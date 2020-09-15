import 'package:archer_flutter_ui/constants/styles.dart';
import 'package:archer_flutter_ui/widgets/gray_bar.dart';
import 'package:archer_flutter_ui/widgets/page_banner.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';


class BusinessHourPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
            children: <Widget>[
              PageBanner(['assets/images/page_banner.jpeg'],
                  title: "GET IN TOUCH WITH US",
                  description: "Wanna know more about us? Give us a ring at 713-305-9920 or 713-858-8768",
                  isRollingBanner: false,
                  hasEnrollButton: true),
              Container(
                  padding: EdgeInsets.fromLTRB(200, 10, 200, 0),
                  //height: 700,
                  width: double.maxFinite,
                  child: Card(
                    child: Container(
                        padding: EdgeInsets.fromLTRB(50, 50, 50, 0),
                        child: Column(
                          children: <Widget> [
                            Container(
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      child: Text(
                                          "BUSINESS HOURS - ",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 20.0)
                                      ),
                                    ),
                                    InkWell(
                                        child: Text(
                                            "Map",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 20.0,
                                              color: Colors.blue,
                                            )
                                        ),
                                        onTap: () {
                                          launch('https://www.google.com/maps/place/Houston+Dragon+Academy/@29.686099,-95.4334982,17z/data=!3m1!4b1!4m5!3m4!1s0x8640c02c31dd2b19:0x3f808e20c030295!8m2!3d29.6860944!4d-95.4313095?shorturl=1');
                                        }
                                    ),
                                    Container(
                                      child: Text(
                                          "\n\n\n\n\n",
                                      ),
                                    ),
                                  ]
                              ),
                            ),
                            Container(
                              child: Row(
                                children: <Widget>[
                                  GrayBar(width: 900, height: 1,),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                    child: Text(
                                      'Days',
                                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),
                                    ),
                                  ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      child: Text(
                                        'Hours',
                                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),
                                      ),
                                    ),
                                  )
                                ],

                              ),
                            ),
                            Container(
                              child: Row(
                                children: <Widget>[
                                  GrayBar(width: 900, height: 2,),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                      child: Text(
                                        'Monday - Friday',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      child: Text(
                                        '4:00 pm - 6:00 pm',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                    ),
                                  )
                                ],

                              ),
                            ),
                            Container(
                              child: Row(
                                children: <Widget>[
                                  GrayBar(width: 900, height: 1,),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                      child: Text(
                                        'Saturday',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      child: Text(
                                        '9:00 am - 5:00 pm',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                    ),
                                  )
                                ],

                              ),
                            ),
                            Container(
                              child: Row(
                                children: <Widget>[
                                  GrayBar(width: 900, height: 1,),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                      child: Text(
                                        'Sunday',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      child: Text(
                                        '2:00 pm - 6:00 pm',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Text(
                                  "\n\n\nSEND US A MESSAGE",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 20.0)
                              ),
                            ),
                             Text('\n\n\n'),
                             Container(
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: <Widget>[
                                   Expanded(
                                       child: TextFormField(
                                         decoration: const InputDecoration(
                                           labelText: ('First Name *'),
                                           labelStyle: TextStyle(
                                             color: Colors.grey,
                                           ),
                                         ),
                                       )
                                   ),
                                   Container(
                                     color: Colors.white,
                                     width: 30,
                                   ),
                                   Expanded(
                                       child: TextFormField(
                                         decoration: const InputDecoration(
                                           labelText: ('Last Name *'),
                                           labelStyle: TextStyle(
                                             color: Colors.grey,
                                           ),
                                         ),
                                       )
                                   ),
                                 ],
                               ),
                             ),
                            Container(
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                          labelText: ('Phone Number *'),
                                          labelStyle: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                      )
                                  ),
                                  Container(
                                    color: Colors.white,
                                    width: 30,
                                  ),
                                  Expanded(
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                          labelText: ('Email Address *'),
                                          labelStyle: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                      )
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: <Widget> [
                                  Expanded(child: TextFormField(
                                    decoration: const InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.grey),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.grey),
                                      ),
                                      labelText: ('Message *'),
                                      labelStyle: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  )),
                                  Container(
                                    color: Colors.white,
                                    width: 30,
                                  ),
                                  Expanded(child: Container(
                                    color: Colors.white,
                                  ),)
                                ],
                              ),


                            ),
                            Text('\n\n\n\n\n\n\n\n\n\n\n'),
                            GrayBar(width: 900,height: 1,),
                            Container(
                                child: FlatButton(
                                  color: Colors.blue[400],
                                  textColor: Colors.white,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(36.0)),
                                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 80),
                                  onPressed: () {
                                    /*...*/
                                  },
                                  child: Text(
                                    "SEND",
                                    style: descriptionTextStyle(DeviceScreenType.desktop),
                                  ),
                                )
                            ),





                          ],
                          ),
                        ),
                    ),
                  ),


            ]
        ));
  }

}