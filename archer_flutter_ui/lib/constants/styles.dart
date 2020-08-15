import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

/// Returns the style for a page title based on the [deviceScreenType] passed in.
TextStyle titleTextStyle(DeviceScreenType deviceScreenType) {
  double titleSize = deviceScreenType == DeviceScreenType.mobile ? 40 : 50;
  return TextStyle(
      fontWeight: FontWeight.w800, height: 1.0, fontSize: titleSize, color: Colors.white);
}

/// Return the style for description text on a page based on the [deviceScreenType] passed in.
TextStyle descriptionTextStyle(DeviceScreenType deviceScreenType) {
  double descriptionSize =
  deviceScreenType == DeviceScreenType.mobile ? 12 : 15;

  return TextStyle(
    fontSize: descriptionSize,
    height: 1.5,
    color: Colors.white,
  );
}

const kTextColor = Color(0xFF707070);
const kTextLightColor = Color(0xFF555555);

const kDefaultPadding = 20.0;

final kDefaultShadow = BoxShadow(
  offset: Offset(0, 50),
  blurRadius: 50,
  color: Color(0xFF0700B1).withOpacity(0.15),
);

final kDefaultCardShadow = BoxShadow(
  offset: Offset(0, 20),
  blurRadius: 50,
  color: Colors.black.withOpacity(0.1),
);

// TextField dedign
final kDefaultInputDecorationTheme = InputDecorationTheme(
  border: kDefaultOutlineInputBorder,
  enabledBorder: kDefaultOutlineInputBorder,
  focusedBorder: kDefaultOutlineInputBorder,
);

final kDefaultOutlineInputBorder = OutlineInputBorder(
  // Maybe flutter team need to fix it on web
  // borderRadius: BorderRadius.circular(50),
  borderSide: BorderSide(
    color: Color(0xFFCEE4FD),
  ),
);
