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