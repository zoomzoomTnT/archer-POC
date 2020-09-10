// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../view/about.dart';
import '../view/businessHour.dart';
import '../view/calendar.dart';
import '../view/campus.dart';
import '../view/career.dart';
import '../view/courses.dart';
import '../view/home.dart';
import '../view/parents.dart';
import '../view/signin.dart';

class Routes {
  static const String homePage = '/';
  static const String campusPage = '/campus-page';
  static const String aboutPage = '/about-page';
  static const String coursePage = '/course-page';
  static const String parentPage = '/parent-page';
  static const String signinPage = '/signin-page';
  static const String calendarPage = '/calendar-page';
  static const String careerPage = '/career-page';
  static const String businessHourPage = '/business-hour-page';
  static const all = <String>{
    homePage,
    campusPage,
    aboutPage,
    coursePage,
    parentPage,
    signinPage,
    calendarPage,
    careerPage,
    businessHourPage,
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
    RouteDef(Routes.parentPage, page: ParentPage),
    RouteDef(Routes.signinPage, page: SigninPage),
    RouteDef(Routes.calendarPage, page: CalendarPage),
    RouteDef(Routes.careerPage, page: CareerPage),
    RouteDef(Routes.businessHourPage, page: BusinessHourPage),
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
    ParentPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ParentPage(),
        settings: data,
      );
    },
    SigninPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SigninPage(),
        settings: data,
      );
    },
    CalendarPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => CalendarPage(),
        settings: data,
      );
    },
    CareerPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => CareerPage(),
        settings: data,
      );
    },
    BusinessHourPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => BusinessHourPage(),
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
