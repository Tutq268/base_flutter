// Package imports:
import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:base_flutter/ui/router/router.gr.dart';

// ignore_for_file:prefer-single-widget-per-file
@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
@LazySingleton()
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, path: "/"),
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: MainRoute.page, children: [
          AutoRoute(
            page: HomeTab.page,
            maintainState: true,
            children: [
              AutoRoute(page: HomeRoute.page, initial: true),
            ],
          ),
          AutoRoute(
            page: SupportTab.page,
            maintainState: true,
            children: [
              AutoRoute(page: SupportRoute.page, initial: true),
            ],
          ),
          AutoRoute(
            page: MyPackageTab.page,
            maintainState: true,
            children: [
              AutoRoute(page: MyPackageRoute.page, initial: true),
            ],
          ),
          AutoRoute(
            page: ServiceTab.page,
            maintainState: true,
            children: [
              AutoRoute(page: ServiceRoute.page, initial: true),
            ],
          ),
          AutoRoute(
            page: PointsTab.page,
            maintainState: true,
            children: [
              AutoRoute(page: PointsRoute.page, initial: true),
            ],
          ),
        ]),
        AutoRoute(page: VerifyOtpRoute.page),
      ];
}

@RoutePage(name: 'HomeTab')
class HomeTabPage extends AutoRouter {
  const HomeTabPage({super.key});
}

@RoutePage(name: 'SupportTab')
class SupportTabPage extends AutoRouter {
  const SupportTabPage({super.key});
}

@RoutePage(name: 'ServiceTab')
class ServiceTabPage extends AutoRouter {
  const ServiceTabPage({super.key});
}

@RoutePage(name: 'MyPackageTab')
class MyPackageTabPage extends AutoRouter {
  const MyPackageTabPage({super.key});
}

@RoutePage(name: 'PointsTab')
class PointsTabPage extends AutoRouter {
  const PointsTabPage({super.key});
}

@RoutePage(name: 'SelectAppTab')
class SelectAppTabPage extends AutoRouter {
  const SelectAppTabPage({super.key});
}

@RoutePage(name: 'SelectTimerTab')
class SelectTimerTabPage extends AutoRouter {
  const SelectTimerTabPage({super.key});
}
