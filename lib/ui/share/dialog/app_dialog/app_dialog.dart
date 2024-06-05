// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Project imports:
import 'package:base_flutter/resource/dimens/app_dimen.dart';
import 'package:base_flutter/resource/dimens/dimens.dart';
import 'package:base_flutter/ui/share/button/base_button.dart';

class AppDialog extends StatelessWidget {
  final String? title;
  final double? buttonTextSize;
  final String? rightButtonTitle;
  final String? leftButtonTitle;
  final Widget? content;
  final Function()? rightAction;
  final Function()? leftAction;
  final bool? haveLeftButton;
  final Color cancelColor;
  final Color applyColor;
  final bool? isShowBottomAction;
  final TextStyle? titleStyle;

  const AppDialog(
      {super.key,
      this.title,
      this.rightButtonTitle,
      this.leftButtonTitle,
      this.content,
      this.rightAction,
      this.leftAction,
      this.applyColor = Colors.blue,
      this.cancelColor = Colors.red,
      this.buttonTextSize,
      this.isShowBottomAction = true,
      this.haveLeftButton = true,
      this.titleStyle});

  get title16Bold => null;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding:
          EdgeInsets.symmetric(horizontal: Dimens.d12.responsive().sp),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: _body(context),
    );
  }

  Widget _body(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r), color: Colors.white),
      padding: EdgeInsets.only(
        top: title == null ? 0 : Dimens.d12.responsive().sp,
        bottom: Dimens.d12.responsive().sp,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _title(),
          content!,
          isShowBottomAction == true ? _groupButton() : Container(),
        ],
      ),
    );
  }

  Widget _title() => Padding(
        padding: EdgeInsets.only(
          right: Dimens.d12.responsive().sp,
        ),
        child: Text(
          title ?? "",
          textAlign: TextAlign.center,
          style: titleStyle ?? title16Bold,
        ),
      );

  Widget _groupButton() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (haveLeftButton!)
            Expanded(
                flex: 1,
                child: Center(
                  child: BaseButton.primaryEnable(
                      label: leftButtonTitle, onPress: leftAction),
                )),
          Expanded(
              flex: 1,
              child: Center(
                child: BaseButton.primaryEnable(
                  label: rightButtonTitle,
                  onPress: rightAction,
                ),
              )),
        ],
      );
}
