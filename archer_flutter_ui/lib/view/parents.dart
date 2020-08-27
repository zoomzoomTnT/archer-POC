import 'package:archer_flutter_ui/widgets/blue_bar.dart';
import 'package:archer_flutter_ui/widgets/file_list.dart';
import 'package:archer_flutter_ui/widgets/page_banner.dart';
import 'package:flutter/material.dart';

class ParentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
          children: <Widget>[
            PageBanner(['assets/images/page_banner.jpeg'],
                title: "PARENT CENTER",
                description: "Better Chinese, More Choices!",
                isRollingBanner: false,
                hasEnrollButton: true),
            Text('\nFILES', style: TextStyle(fontSize: 32.0), textAlign: TextAlign.center,),
            BlueBar(width: 170.0,),
            FileList(),
            Text('\nCHILD SAFETY', style: TextStyle(fontSize: 32.0), textAlign: TextAlign.center,),
            BlueBar(width: 170.0,),
            Text(
                'Your children\'s safety is of our utmost concern. Thus, we prohibit the carrying of firearms, knives, and other weapons within school grounds.\n Any student or parents found possessing such items will be asked to leave immediately and not welcomed back to the Houston Dragon Academy. No refunds will be granted in such circumstances\n',
                style: TextStyle(fontSize: 15.0, fontFamily: 'Quicksand', height: 1.75)
            ),
            Text('\nREFUND POLICY', style: TextStyle(fontSize: 32.0), textAlign: TextAlign.center,),
            BlueBar(width: 170.0,),
            Container(
              padding: EdgeInsets.fromLTRB(200.0, 30.0, 200.0, 30.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            Image(
                              image: AssetImage('images/refund-full.png'),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      'Before the first class\n'),
                                  Text(
                                    'Full Refund',
                                    style: TextStyle(color: Colors.blue[300]),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                  ),
                  Expanded(
                    child: Container(
                      child: Row(
                        children: <Widget>[
                          Image(
                            image: AssetImage('images/refund-80.png'),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    'Before the second class\n'),
                                Text(
                                  '80% Refund',
                                  style: TextStyle(color: Colors.blue[300]),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(200.0, 30.0, 200.0, 30.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      child: Row(
                        children: <Widget>[
                          Image(
                            image: AssetImage('images/refund-50.png'),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    'Before the third class\n'),
                                Text(
                                  '50% Refund',
                                  style: TextStyle(color: Colors.blue[300]),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Row(
                        children: <Widget>[
                          Image(
                            image: AssetImage('images/refund-20.png'),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    'Before the fourth class\n'),
                                Text(
                                  '20% Refund',
                                  style: TextStyle(color: Colors.blue[300]),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(200.0, 30.0, 200.0, 30.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      child: Row(
                        children: <Widget>[
                          Image(
                            image: AssetImage('images/refund-no.png'),
                          ),
                          Container(
                              padding: EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'After the fourth class\n'),
                                  Text(
                                    'No Refund',
                                    style: TextStyle(color: Colors.blue[300]),
                                  )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Row(
                        children: <Widget>[
                          Image(
                            image: AssetImage('images/registration-non.png'),
                          ),
                          Container(
                              padding: EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        'Registration fee\n'),
                                    Text(
                                        'Non-refundable',
                                      style: TextStyle(color: Colors.blue[300]),
                                    )
                                  ],
                              ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

          ],
    ));
  }
}
