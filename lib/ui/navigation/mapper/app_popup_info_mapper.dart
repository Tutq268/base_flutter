// Flutter imports:
import 'package:flutter/cupertino.dart';

// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:base_flutter/ui/navigation/app_navigator.dart';
import 'package:base_flutter/ui/navigation/app_popup_info.dart';
import 'package:base_flutter/ui/navigation/app_route_info.dart';
import 'package:base_flutter/ui/navigation/base/base_popup_info_mapper.dart';
import 'package:base_flutter/ui/share/common_dialog.dart';
import 'package:base_flutter/ui/share/dialog/app_dialog/popup_button.dart';

@LazySingleton(as: BasePopupInfoMapper)
class AppPopupInfoMapper extends BasePopupInfoMapper {
  @override
  Widget map(AppPopupInfo appRouteInfo, AppNavigator navigator) {
    return appRouteInfo.when(
        confirmDialog: (message, onPressed) {
          return CommonDialog(
            actions: [
              PopupButton(
                text: 'Ok',
                onPressed: onPressed ?? () => navigator.pop(),
              ),
            ],
            message: message,
          );
        },
        errorWithRetryDialog: (message, onRetryPressed) {
          return CommonDialog(
            actions: [
              PopupButton(
                text: 'Cancel',
                onPressed: () => navigator.pop(),
              ),
              PopupButton(
                text: 'Retry',
                onPressed: onRetryPressed ?? () => navigator.pop(),
                isDefault: true,
              ),
            ],
            message: message,
          );
        },
        requiredLoginDialog: () => CommonDialog.adaptive(
              title: 'login',
              message: 'login',
              actions: [
                PopupButton(
                  text: 'cancel',
                  onPressed: () => navigator.pop(),
                ),
                PopupButton(
                  text: 'login',
                  onPressed: () async {
                    await navigator.pop();
                    await navigator.push(const AppRouteInfo.login());
                  },
                ),
              ],
            ),
        blankBottomSheet: (Widget renderData) => renderData);
  }
}
