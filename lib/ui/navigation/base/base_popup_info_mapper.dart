// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:base_flutter/ui/navigation/app_navigator.dart';
import 'package:base_flutter/ui/navigation/app_popup_info.dart';

abstract class BasePopupInfoMapper {
  Widget map(AppPopupInfo appRouteInfo, AppNavigator navigator);
}
