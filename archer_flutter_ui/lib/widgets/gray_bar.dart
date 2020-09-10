import 'package:flutter/material.dart';

class GrayBar extends StatelessWidget {
  const GrayBar ({this.width,this.height});
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 10.0),
      child:Container(
        height:height,
        width:width,
        color:Colors.grey[300],),
    );
  }
}