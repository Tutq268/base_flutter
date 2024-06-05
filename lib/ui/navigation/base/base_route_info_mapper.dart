// Package imports:
import 'package:auto_route/auto_route.dart';

// Project imports:
import 'package:base_flutter/ui/navigation/app_route_info.dart';

abstract class BaseRouteInfoMapper {
  PageRouteInfo map(AppRouteInfo appRouteInfo);

  List<PageRouteInfo> mapList(List<AppRouteInfo> listAppRouteInfo) {
    return listAppRouteInfo.map(map).toList(growable: false);
  }
}
