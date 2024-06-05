// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:base_flutter/ui/di/di.dart' as di;
import 'package:base_flutter/ui/navigation/app_navigator.dart';
import 'package:base_flutter/ui/resource/styles/app_colors.dart';

class BaseScreen extends StatelessWidget {
  BaseScreen(
      {super.key,
      this.title,
      this.leading,
      this.trailing,
      required this.child,
      this.elevation = 0.5,
      this.onPress,
      this.centerTitle = true,
      this.isSafeAreaTop = true,
      this.titleWidget,
      this.floatingActionButton,
      this.backgroundColor,
      this.titleColor});

  final String? title;
  final List<Widget>? trailing;
  final Widget? leading;
  final Widget child;
  final double? elevation;
  final Function()? onPress;
  final Widget? titleWidget;
  final Widget? floatingActionButton;
  final Color? backgroundColor;
  final Color? titleColor;
  final bool? centerTitle;
  final bool? isSafeAreaTop;
  final AppNavigator navigator = di.getIt.get<AppNavigator>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.current.backGroundColor,
      // appBar: title != null
      //     ? AppBar(
      //         backgroundColor:
      //             backgroundColor ?? AppColors.current.primaryColor,
      //         actions: trailing,
      //         leading: leading,
      //         automaticallyImplyLeading: leading != null ? true : false,
      //         elevation: elevation,
      //         centerTitle: centerTitle,
      //         title: Text(title!, style: AppTextStyles.s16w600Primary()))
      //     : null,
      floatingActionButton: floatingActionButton,
      body: SafeArea(
        top: isSafeAreaTop ?? true,
        child: GestureDetector(
          child: child,
          onTap: () {
            FocusScopeNode currentFocus = FocusScope.of(context);
            if (!currentFocus.hasPrimaryFocus) {
              currentFocus.unfocus();
            }
          },
        ),
      ),
    );
  }
}
