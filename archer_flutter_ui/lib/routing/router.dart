import 'package:archer_flutter_ui/view/about.dart';
import 'package:archer_flutter_ui/view/campus.dart';
import 'package:archer_flutter_ui/view/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case 'home':
      return _getPageRoute(HomePage(title: 'Houston Dragon Academy'), settings.name);
    case 'about':
      return _getPageRoute(AboutPage(), settings.name);
    case 'campus':
      return _getPageRoute(CampusPage(), settings.name);
    default:
  }
}

PageRoute _getPageRoute(Widget child, String routeName) {
  return _FadeRoute(child: child, routeName: routeName);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  final String routeName;
  _FadeRoute({this.child, this.routeName})
      : super(
      pageBuilder: (
          BuildContext context,
          Animation<double> animation,
          Animation<double> secondaryAnimation,
          ) =>
      child,
      settings: RouteSettings(name: routeName),
      transitionsBuilder: (
          BuildContext context,
          Animation<double> animation,
          Animation<double> secondaryAnimation,
          Widget child,
          ) =>
          FadeTransition(
            opacity: animation,
            child: child,
          ));
}