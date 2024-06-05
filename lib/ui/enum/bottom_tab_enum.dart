// Project imports:
import 'package:base_flutter/resource/generated/l10n.dart';
import 'package:base_flutter/ui/config/app_path.dart';

enum BottomTab {
  home(icon: AppPath.bottomHome, activeIcon: AppPath.bottomHome),
  service(icon: AppPath.bottomService, activeIcon: AppPath.bottomServiceActive),
  myPackage(
      icon: AppPath.bottomMyPackage, activeIcon: AppPath.bottomMyPackageActive),
  points(icon: AppPath.bottomPoints, activeIcon: AppPath.bottomPointsActive),
  accountBalance(
      icon: AppPath.bottomSupport, activeIcon: AppPath.bottomSupportActive),
  ;

  const BottomTab({
    required this.icon,
    required this.activeIcon,
  });
  final String icon;
  final String activeIcon;

  String get title {
    switch (this) {
      case BottomTab.service:
        return S.current.service;
      case BottomTab.myPackage:
        return S.current.pack;
      case BottomTab.home:
        return S.current.home;
      case BottomTab.points:
        return S.current.point;
      case BottomTab.accountBalance:
        return S.current.support;
    }
  }
}
