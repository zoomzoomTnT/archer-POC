// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:stacked_services/stacked_services.dart';

import '../services/courses_api.dart';
import 'services_registry.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final servicesRegistry = _$ServicesRegistry();
  gh.lazySingleton<CoursesApi>(() => CoursesApi());
  gh.lazySingleton<DialogService>(() => servicesRegistry.dialogService);
  gh.lazySingleton<NavigationService>(() => servicesRegistry.navigationService);
  return get;
}

class _$ServicesRegistry extends ServicesRegistry {
  @override
  DialogService get dialogService => DialogService();
  @override
  NavigationService get navigationService => NavigationService();
}
