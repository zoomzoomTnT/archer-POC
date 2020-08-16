// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../view/about.dart';
import '../view/campus.dart';
import '../view/courses.dart';
import '../view/home.dart';
import '../view/signin.dart';

class Routes {
  static const String homePage = '/';
  static const String campusPage = '/campus-page';
  static const String aboutPage = '/about-page';
  static const String coursePage = '/course-page';
  static const String signinPage = '/signin-page';
  static const all = <String>{
    homePage,
    campusPage,
    aboutPage,
    coursePage,
    signinPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homePage, page: HomePage),
    RouteDef(Routes.campusPage, page: CampusPage),
    RouteDef(Routes.aboutPage, page: AboutPage),
    RouteDef(Routes.coursePage, page: CoursePage),
    RouteDef(Routes.signinPage, page: SigninPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    HomePage: (data) {
      final args = data.getArgs<HomePageArguments>(
        orElse: () => HomePageArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomePage(
          key: args.key,
          title: args.title,
        ),
        settings: data,
      );
    },
    CampusPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const CampusPage(),
        settings: data,
      );
    },
    AboutPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => AboutPage(),
        settings: data,
      );
    },
    CoursePage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const CoursePage(),
        settings: data,
      );
    },
    SigninPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SigninPage(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// HomePage arguments holder class
class HomePageArguments {
  final Key key;
  final String title;
  HomePageArguments({this.key, this.title});
}
