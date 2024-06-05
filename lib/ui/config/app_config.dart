// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:base_flutter/data/enum/shared_enum.dart';
import 'package:base_flutter/foundation/constant/ui/ui_constants.dart';
import 'package:base_flutter/foundation/mixin/app_bloc_observer.dart';
import 'package:base_flutter/foundation/utils/device_utils.dart';
import 'package:base_flutter/foundation/utils/view_utils.dart';
import 'package:base_flutter/ui/config/app_initializer.dart';
import '../di/di.dart' as di;

class AppConfig extends ApplicationConfig {
  factory AppConfig.getInstance() {
    return _instance;
  }

  AppConfig._();

  static final AppConfig _instance = AppConfig._();

  @override
  Future<void> config() async {
    di.configureInjection();
    Bloc.observer = AppBlocObserver();
    await ViewUtils.setPreferredOrientations(
        DeviceUtils.deviceType == DeviceType.mobile
            ? UiConstants.mobileOrientation
            : UiConstants.tabletOrientation);
    ViewUtils.setSystemUIOverlayStyle(UiConstants.systemUiOverlay);
  }
}
