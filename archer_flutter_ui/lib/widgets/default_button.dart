import 'package:flutter/material.dart';

import 'package:archer_flutter_ui/constants/styles.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key,
    this.iconSrc,
    this.imageSrc,
    this.text,
    this.press,
  }) : super(key: key);

  final String imageSrc, text;
  final IconData iconSrc;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.symmetric(
        vertical: kDefaultPadding,
        horizontal: kDefaultPadding * 2,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      color: Color(0xFFE8F0F9),
      onPressed: press,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if(iconSrc != null) Icon(iconSrc),
          if(imageSrc != null) Image.asset(imageSrc, height: 40),
          if(iconSrc != null || imageSrc != null) SizedBox(width: kDefaultPadding * 0.5),
          if(text != null) Text(text),
        ],
      ),
    );
  }
}
