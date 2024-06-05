// Flutter imports:
import 'package:flutter/cupertino.dart';

class CustomCupertinoAlert extends StatelessWidget {
  final BuildContext context;
  final String title;
  final String? content;
  final String leftButtonTitle;
  final Function()? leftAction;
  final String rightButtonTitle;
  final bool isRightDestructiveAction;
  final bool isRightDefaultAction;
  final Function()? rightAction;
  final Function()? onDismiss;

  const CustomCupertinoAlert({
    super.key,
    required this.context,
    required this.title,
    this.content,
    this.leftButtonTitle = 'Đóng',
    this.leftAction,
    required this.rightButtonTitle,
    this.isRightDestructiveAction = false,
    this.isRightDefaultAction = false,
    this.rightAction,
    this.onDismiss,
  });

  @override
  Widget build(context) {
    return CupertinoAlertDialog(
      title: Text(title),
      content: Text(content ?? ''),
      actions: <Widget>[
        CupertinoDialogAction(
          onPressed: leftAction ?? () => Navigator.pop(context),
          child: Text(leftButtonTitle),
        ),
        CupertinoDialogAction(
          isDestructiveAction: isRightDestructiveAction,
          onPressed: rightAction,
          child: Text(rightButtonTitle),
        ),
      ],
    );
  }
}
