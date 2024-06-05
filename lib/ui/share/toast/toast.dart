// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:bot_toast/bot_toast.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:base_flutter/ui/resource/styles/app_colors.dart';
import 'package:base_flutter/ui/resource/styles/app_text_styles.dart';

abstract class IToast {
  void show({
    required String title,
    String? message,
    Duration? duration,
    bool hasDismissButton = true,
    Widget? icon,
    Function() onClose,
  });

  void dismiss();
}

@LazySingleton(as: IToast)
class CustomBotToast implements IToast {
  CancelFunc? _cancel;

  @override
  void show({
    required String title,
    String? message,
    Duration? duration,
    Widget? icon,
    bool hasDismissButton = true,
    Function()? onClose,
  }) {
    _cancel = BotToast.showNotification(
      title: (_) => Text(
        title,
        style: AppTextStyles.s14w400Primary()
            .copyWith(color: AppColors.current.primaryTextColor),
      ),
      subtitle: (_) => Text(
        message ?? "",
        style: AppTextStyles.s12w400PrimaryTextColor(),
      ),
      duration: duration,
      backgroundColor: Colors.white.withOpacity(0.95),
      borderRadius: 10.0,
      trailing: (cancel) => IconButton(
        icon: const Icon(
          Icons.close,
          size: 20.0,
        ),
        onPressed: onClose,
      ),
    );
  }

  @override
  void dismiss() {
    _cancel?.call();
  }
}
