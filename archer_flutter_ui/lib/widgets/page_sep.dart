import 'dart:html';

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../constants/styles.dart';

class PageSeparator extends StatelessWidget {
  const PageSeparator ({this.imageUrl,this.description});
  final String imageUrl;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0.0, 45.0, 0.0, 45.0),
      color: Colors.blue[300],
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(200.0, 0.0, 0.0, 0.0),
            child: Image.asset(imageUrl,scale: 0.85,),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(100.0, 0.0, 100.0, 0.0),
            child: Text(description,
              style: TextStyle(color: Colors.white),
            ),
          ),
          Container(
            child: RaisedButton(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              color: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(36.0)),
              onPressed: () {},
              child: Text('ENROLL NOW',
                style: TextStyle(color: Colors.blue[300]),//descriptionTextStyle(DeviceScreenType.desktop),
              ),
            ),

          ),
        ],

      ),
    );
  }


}
