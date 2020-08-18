import 'package:archer_flutter_ui/services/courses_api.dart';
import 'package:injectable/injectable.dart';
import 'package:stacked_services/stacked_services.dart';

@module
abstract class ServicesRegistry {

  @lazySingleton
  NavigationService get navigationService;

  @lazySingleton
  DialogService get dialogService;
}