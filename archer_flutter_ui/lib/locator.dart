import 'package:archer_flutter_ui/services/courses_api.dart';
import 'package:archer_flutter_ui/services/navigation_service.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => CoursesApi());
}