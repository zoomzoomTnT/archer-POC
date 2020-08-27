import 'package:archer_flutter_ui/widgets/page_banner.dart';
import 'package:flutter/material.dart';

class CalendarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
            children: <Widget>[
              PageBanner(['assets/images/page_banner.jpeg'],
                  title: "ACADEMIC CALENDAR",
                  description: "Better Chinese, More Choices!",
                  isRollingBanner: false,
                  hasEnrollButton: true),
              Image(image: AssetImage('images/calendarPic.png')),
            ]
        )
    );
  }
}
