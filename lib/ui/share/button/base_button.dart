// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Project imports:
import 'package:base_flutter/ui/resource/styles/app_colors.dart';
import 'package:base_flutter/ui/resource/styles/app_text_styles.dart';

class BaseButton extends StatelessWidget {
  final void Function()? onPress;
  final String? label;
  final double? borderRadius;
  final double? borderWidth;
  final Color? borderColor;
  final Color? backgroundColor;
  final double? maxWidth;
  final double? maxHeight;
  final TextStyle? labelStyle;
  final Color? textColor;
  final EdgeInsets? padding;
  final Widget? iconLeft;
  final Widget? iconRight;
  final MainAxisAlignment? mainAlignment;
  final bool? isEnable;
  final bool? isLoading;
  const BaseButton(
      {super.key,
      this.onPress,
      this.label,
      this.borderRadius,
      this.borderColor,
      this.borderWidth,
      this.backgroundColor,
      this.maxHeight,
      this.maxWidth,
      this.labelStyle,
      this.textColor,
      this.padding,
      this.iconLeft,
      this.iconRight,
      this.isEnable,
      this.mainAlignment,
      this.isLoading = false});

  BaseButton.primaryEnable(
      {Key? key,
      void Function()? onPress,
      String? label,
      double? maxHeight,
      TextStyle? labelStyle,
      double? borderRadius,
      Color? borderColor,
      double? maxWidth,
      bool? isEnable,
      final Color? textColor,
      final EdgeInsets? padding,
      final Widget? iconLeft,
      final Widget? iconRight,
      final MainAxisAlignment? mainAlignment,
      Color? backgroundColor})
      : this(
            key: key,
            onPress: onPress,
            label: label,
            maxHeight: maxHeight ?? 36.h,
            labelStyle: labelStyle ??
                AppTextStyles.s16w600Primary().copyWith(color: Colors.white),
            borderRadius: borderRadius ?? 10.r,
            borderColor: borderColor ?? Colors.transparent,
            maxWidth: maxWidth,
            backgroundColor: backgroundColor ?? AppColors.current.primaryColor,
            padding: padding,
            iconLeft: iconLeft,
            isEnable: isEnable,
            iconRight: iconRight,
            mainAlignment: mainAlignment);

  BaseButton.primaryDiasble(
      {Key? key,
      void Function()? onPress,
      String? label,
      double? maxHeight,
      TextStyle? labelStyle,
      double? borderRadius,
      Color? borderColor,
      double? maxWidth,
      bool? isEnable,
      final Color? textColor,
      final EdgeInsets? padding,
      final Widget? iconLeft,
      final Widget? iconRight,
      final MainAxisAlignment? mainAlignment,
      Color? backgroundColor})
      : this(
            key: key,
            onPress: onPress,
            label: label,
            maxHeight: maxHeight ?? 36.h,
            labelStyle: labelStyle ?? AppTextStyles.s16w400Primary(),
            borderRadius: borderRadius ?? 10.r,
            borderColor: borderColor ?? Colors.transparent,
            maxWidth: maxWidth,
            backgroundColor: backgroundColor ?? AppColors.current.primaryColor,
            iconLeft: iconLeft,
            iconRight: iconRight,
            isEnable: isEnable,
            mainAlignment: mainAlignment,
            padding: padding);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress ?? () {},
      child: Container(
        height: maxHeight ?? 36.h,
        alignment: Alignment.center,
        padding: padding ?? EdgeInsets.symmetric(horizontal: 16.w),
        decoration: BoxDecoration(
            color: backgroundColor ?? AppColors.current.primaryColor,
            border: Border.all(
                width: borderWidth ?? 0,
                color: borderColor ?? Colors.transparent),
            borderRadius: BorderRadius.circular(borderRadius ?? 6.r),
            boxShadow: isEnable == true
                ? [
                    // BoxShadow(
                    //   color: Color(0xFF031AEC).withOpacity(0.8),
                    //   spreadRadius: 0,
                    //   blurRadius: 10,
                    //   offset: Offset(1, 2),
                    // ),
                    // BoxShadow(
                    //   color: Color(0xFF020202).withOpacity(0.33),
                    //   spreadRadius: 0,
                    //   blurRadius: 4,
                    //   offset: Offset(4, 4),
                    // )
                  ]
                : []),
        child: Row(
          mainAxisAlignment: mainAlignment ?? MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            iconLeft ?? Container(),
            isLoading == true
                ? SizedBox(
                    width: 23.w,
                    height: 23.w,
                    child: const CircularProgressIndicator(
                      color: Colors.white,
                    ),
                  )
                : Text(
                    label ?? "",
                    textAlign: TextAlign.center,
                    style: labelStyle ??
                        AppTextStyles.s14w400Primary()
                            .copyWith(color: textColor),
                  ),
            iconRight ?? Container(),
          ],
        ),
      ),
    );
  }
}
