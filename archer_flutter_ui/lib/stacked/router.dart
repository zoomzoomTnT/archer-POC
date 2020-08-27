import 'package:archer_flutter_ui/view/about.dart';
import 'package:archer_flutter_ui/view/businessHour.dart';
import 'package:archer_flutter_ui/view/calendar.dart';
import 'package:archer_flutter_ui/view/campus.dart';
import 'package:archer_flutter_ui/view/career.dart';
import 'package:archer_flutter_ui/view/courses.dart';
import 'package:archer_flutter_ui/view/home.dart';
import 'package:archer_flutter_ui/view/parents.dart';
import 'package:archer_flutter_ui/view/signin.dart';
import 'package:auto_route/auto_route_annotations.dart';

@MaterialAutoRouter(routes: [
  MaterialRoute(page: HomePage, initial: true),
  MaterialRoute(page: CampusPage),
  MaterialRoute(page: AboutPage),
  MaterialRoute(page: CoursePage),
  MaterialRoute(page: ParentPage),
  MaterialRoute(page: SigninPage),
  MaterialRoute(page: CalendarPage),
  MaterialRoute(page: CareerPage),
  MaterialRoute(page: BusinessHourPage),
])
class $Router {}
