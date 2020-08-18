import 'package:archer_flutter_ui/view/about.dart';
import 'package:archer_flutter_ui/view/campus.dart';
import 'package:archer_flutter_ui/view/courses.dart';
import 'package:archer_flutter_ui/view/home.dart';
import 'package:archer_flutter_ui/view/signin.dart';
import 'package:auto_route/auto_route_annotations.dart';

@MaterialAutoRouter(routes: [
  MaterialRoute(page: HomePage, initial: true),
  MaterialRoute(page: CampusPage),
  MaterialRoute(page: AboutPage),
  MaterialRoute(page: CoursePage),
  MaterialRoute(page: SigninPage),
])
class $Router {}
