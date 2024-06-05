// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_route_info.freezed.dart';

/// page
@freezed
class AppRouteInfo with _$AppRouteInfo {
  const factory AppRouteInfo.splash() = _Splash;
  const factory AppRouteInfo.login() = _Login;
  const factory AppRouteInfo.main() = _Main;
  const factory AppRouteInfo.verifyOtp(bool isLogin, String phoneNumber) =
      _VerifyOtp;
}
