// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes

// Flutter imports:
import 'package:flutter/material.dart' as _i12;

// Package imports:
import 'package:auto_route/auto_route.dart' as _i11;

// Project imports:
import 'package:base_flutter/ui/router/router.dart' as _i2;
import 'package:base_flutter/ui/screen/home/home_page.dart' as _i1;
import 'package:base_flutter/ui/screen/login/login_page.dart' as _i3;
import 'package:base_flutter/ui/screen/main/main_page.dart' as _i4;
import 'package:base_flutter/ui/screen/my_package/my_package_page.dart' as _i5;
import 'package:base_flutter/ui/screen/points/points_page.dart' as _i6;
import 'package:base_flutter/ui/screen/service/service_page.dart' as _i7;
import 'package:base_flutter/ui/screen/splash/splash_page.dart' as _i8;
import 'package:base_flutter/ui/screen/support/support_page.dart' as _i9;
import 'package:base_flutter/ui/screen/verify_otp/verify_otp_page.dart' as _i10;

abstract class $AppRouter extends _i11.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    HomeTab.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HomeTabPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.LoginPage(),
      );
    },
    MainRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.MainPage(),
      );
    },
    MyPackageRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.MyPackagePage(),
      );
    },
    MyPackageTab.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.MyPackageTabPage(),
      );
    },
    PointsRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.PointsPage(),
      );
    },
    PointsTab.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.PointsTabPage(),
      );
    },
    SelectAppTab.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.SelectAppTabPage(),
      );
    },
    SelectTimerTab.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.SelectTimerTabPage(),
      );
    },
    ServiceRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.ServicePage(),
      );
    },
    ServiceTab.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ServiceTabPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.SplashPage(),
      );
    },
    SupportRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.SupportPage(),
      );
    },
    SupportTab.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.SupportTabPage(),
      );
    },
    VerifyOtpRoute.name: (routeData) {
      final args = routeData.argsAs<VerifyOtpRouteArgs>();
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.VerifyOtpPage(
          key: args.key,
          isLogin: args.isLogin,
          phoneNumber: args.phoneNumber,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i11.PageRouteInfo<void> {
  const HomeRoute({List<_i11.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HomeTabPage]
class HomeTab extends _i11.PageRouteInfo<void> {
  const HomeTab({List<_i11.PageRouteInfo>? children})
      : super(
          HomeTab.name,
          initialChildren: children,
        );

  static const String name = 'HomeTab';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i3.LoginPage]
class LoginRoute extends _i11.PageRouteInfo<void> {
  const LoginRoute({List<_i11.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i4.MainPage]
class MainRoute extends _i11.PageRouteInfo<void> {
  const MainRoute({List<_i11.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i5.MyPackagePage]
class MyPackageRoute extends _i11.PageRouteInfo<void> {
  const MyPackageRoute({List<_i11.PageRouteInfo>? children})
      : super(
          MyPackageRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyPackageRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i2.MyPackageTabPage]
class MyPackageTab extends _i11.PageRouteInfo<void> {
  const MyPackageTab({List<_i11.PageRouteInfo>? children})
      : super(
          MyPackageTab.name,
          initialChildren: children,
        );

  static const String name = 'MyPackageTab';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i6.PointsPage]
class PointsRoute extends _i11.PageRouteInfo<void> {
  const PointsRoute({List<_i11.PageRouteInfo>? children})
      : super(
          PointsRoute.name,
          initialChildren: children,
        );

  static const String name = 'PointsRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i2.PointsTabPage]
class PointsTab extends _i11.PageRouteInfo<void> {
  const PointsTab({List<_i11.PageRouteInfo>? children})
      : super(
          PointsTab.name,
          initialChildren: children,
        );

  static const String name = 'PointsTab';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i2.SelectAppTabPage]
class SelectAppTab extends _i11.PageRouteInfo<void> {
  const SelectAppTab({List<_i11.PageRouteInfo>? children})
      : super(
          SelectAppTab.name,
          initialChildren: children,
        );

  static const String name = 'SelectAppTab';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i2.SelectTimerTabPage]
class SelectTimerTab extends _i11.PageRouteInfo<void> {
  const SelectTimerTab({List<_i11.PageRouteInfo>? children})
      : super(
          SelectTimerTab.name,
          initialChildren: children,
        );

  static const String name = 'SelectTimerTab';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i7.ServicePage]
class ServiceRoute extends _i11.PageRouteInfo<void> {
  const ServiceRoute({List<_i11.PageRouteInfo>? children})
      : super(
          ServiceRoute.name,
          initialChildren: children,
        );

  static const String name = 'ServiceRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ServiceTabPage]
class ServiceTab extends _i11.PageRouteInfo<void> {
  const ServiceTab({List<_i11.PageRouteInfo>? children})
      : super(
          ServiceTab.name,
          initialChildren: children,
        );

  static const String name = 'ServiceTab';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i8.SplashPage]
class SplashRoute extends _i11.PageRouteInfo<void> {
  const SplashRoute({List<_i11.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i9.SupportPage]
class SupportRoute extends _i11.PageRouteInfo<void> {
  const SupportRoute({List<_i11.PageRouteInfo>? children})
      : super(
          SupportRoute.name,
          initialChildren: children,
        );

  static const String name = 'SupportRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i2.SupportTabPage]
class SupportTab extends _i11.PageRouteInfo<void> {
  const SupportTab({List<_i11.PageRouteInfo>? children})
      : super(
          SupportTab.name,
          initialChildren: children,
        );

  static const String name = 'SupportTab';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i10.VerifyOtpPage]
class VerifyOtpRoute extends _i11.PageRouteInfo<VerifyOtpRouteArgs> {
  VerifyOtpRoute({
    _i12.Key? key,
    required bool isLogin,
    required String phoneNumber,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          VerifyOtpRoute.name,
          args: VerifyOtpRouteArgs(
            key: key,
            isLogin: isLogin,
            phoneNumber: phoneNumber,
          ),
          initialChildren: children,
        );

  static const String name = 'VerifyOtpRoute';

  static const _i11.PageInfo<VerifyOtpRouteArgs> page =
      _i11.PageInfo<VerifyOtpRouteArgs>(name);
}

class VerifyOtpRouteArgs {
  const VerifyOtpRouteArgs({
    this.key,
    required this.isLogin,
    required this.phoneNumber,
  });

  final _i12.Key? key;

  final bool isLogin;

  final String phoneNumber;

  @override
  String toString() {
    return 'VerifyOtpRouteArgs{key: $key, isLogin: $isLogin, phoneNumber: $phoneNumber}';
  }
}
