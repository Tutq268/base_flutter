// Package imports:
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Project imports:
import 'package:base_flutter/ui/di/di.config.dart';

@module
abstract class ServiceModule {
  // ignore: invalid_annotation_target
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
}

final GetIt getIt = GetIt.instance;

@injectableInit
void configureInjection() => getIt.init();
