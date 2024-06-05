// Package imports:
import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:base_flutter/ui/navigation/app_route_info.dart';
import 'package:base_flutter/ui/navigation/base/base_route_info_mapper.dart';
import 'package:base_flutter/ui/router/router.gr.dart';

@LazySingleton(as: BaseRouteInfoMapper)
class AppRouteInfoMapper extends BaseRouteInfoMapper {
  @override
  PageRouteInfo map(AppRouteInfo appRouteInfo) {
    return appRouteInfo.when(
      login: () => const LoginRoute(),
      main: () => const MainRoute(),
      splash: () => const SplashRoute(),
      verifyOtp: (bool isLogin, String phoneNumber) =>
          VerifyOtpRoute(isLogin: isLogin, phoneNumber: phoneNumber),
    );
  }
}
