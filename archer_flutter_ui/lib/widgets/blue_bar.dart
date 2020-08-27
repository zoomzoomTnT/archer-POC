import 'package:flutter/material.dart';

class BlueBar extends StatelessWidget {
  const BlueBar ({this.width});
  final double width;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 10.0),
      child:Container(
        height:5.0,
        width:width,
        color:Colors.blue[300],),
    );
  }
}