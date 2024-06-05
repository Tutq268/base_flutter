// Flutter imports:
import 'package:flutter/cupertino.dart';

// Project imports:
import 'package:base_flutter/ui/resource/styles/app_text_styles.dart';
import 'package:base_flutter/ui/share/dialog/app_dialog/popup_button.dart';

class CommonDialog extends StatelessWidget {
  const CommonDialog({
    this.actions = const <PopupButton>[],
    this.title,
    this.message,
    super.key,
  });

  final List<PopupButton> actions;
  final String? title;
  final String? message;

  const CommonDialog.adaptive({
    List<PopupButton> actions = const <PopupButton>[],
    String? title,
    String? message,
    Key? key,
  }) : this(
          actions: actions,
          title: title,
          message: message,
          key: key,
        );
  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      actions: actions
          .map((e) => CupertinoDialogAction(
                onPressed: e.onPressed,
                child: Text(
                  e.text ?? 'Ok',
                  style: e.isDefault
                      ? AppTextStyles.s14w400Primary()
                      : AppTextStyles.s14w400Primary(),
                ),
              ))
          .toList(growable: false),
      title: title != null
          ? Text(
              title ?? '',
              style: AppTextStyles.s14w400Primary(),
            )
          : null,
      content: message != null
          ? Text(
              message ?? '',
              style: AppTextStyles.s14w400Primary(),
            )
          : null,
    );
  }
}
