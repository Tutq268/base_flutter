// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

// Project imports:
import 'package:base_flutter/resource/dimens/dimens.dart';
import 'package:base_flutter/ui/resource/styles/app_colors.dart';
import 'package:base_flutter/ui/resource/styles/app_text_styles.dart';

class AppTextField extends StatelessWidget {
  AppTextField({
    this.title,
    this.hintText = '',
    this.suffixIcon,
    this.prefixIcon,
    this.controller,
    this.onChanged,
    this.isPassword,
    this.onTap,
    this.isRequired,
    this.keyboardType = TextInputType.text,
    this.validator,
    this.minLines = 1,
    this.maxLines = 1,
    this.borderRadius,
    this.autoFocus = false,
    this.fillColor = Colors.transparent,
    this.readOnly = false,
    this.isHideBorder = false,
    this.contentPaddingVertical,
    this.textFiledStyle,
    this.hintTextSize,
    super.key,
  });

  final String? title;
  final String hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;

  final void Function(String)? onChanged;
  final VoidCallback? onTap;
  final TextInputType keyboardType;
  final TextEditingController? controller;
  final bool? isPassword;
  final dynamic validator;
  final bool? isRequired;
  final bool? readOnly;
  final bool? isHideBorder;
  final int? minLines;
  final int? maxLines;
  final double? borderRadius;
  final double? contentPaddingVertical;
  final bool? autoFocus;
  final ValueNotifier _isShow = ValueNotifier(false);
  final Color fillColor;
  final TextStyle? textFiledStyle;
  final double? hintTextSize;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Visibility(
          visible: title != null,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  title ?? "",
                  style: AppTextStyles.s14w400Primary()
                      .copyWith(fontWeight: FontWeight.w500),
                ),
                isRequired == true
                    ? Text(
                        "*",
                        style: AppTextStyles.s14w400Primary()
                            .copyWith(color: Colors.red),
                      )
                    : Container()
              ],
            ),
          ),
        ),
        Visibility(visible: title != null, child: SizedBox(height: 12.h)),
        ValueListenableBuilder(
          valueListenable: _isShow,
          builder: (context, value, _) {
            return SizedBox(
              child: TextFormField(
                onTap: onTap,
                onChanged: onChanged,
                controller: controller,
                autofocus: autoFocus ?? false,
                minLines: minLines,
                maxLines: maxLines,
                style: textFiledStyle,
                validator: validator,
                readOnly: readOnly ?? false,
                keyboardType: keyboardType,
                obscureText: isPassword == true ? !_isShow.value : false,
                decoration: InputDecoration(
                    fillColor: fillColor,
                    hintText: hintText,
                    filled: true,
                    errorStyle: TextStyle(
                      fontSize: 12.sp,
                    ),
                    hintStyle: AppTextStyles.s14w400Primary().copyWith(
                        color: const Color(0xFFA3AED0),
                        fontSize: hintTextSize ?? 14.sp),
                    floatingLabelBehavior: FloatingLabelBehavior.always,

                    //     AppTextStyle().textBody.copyWith(color: primaryColor),

                    errorBorder: OutlineInputBorder(
                        borderSide: isHideBorder == true
                            ? BorderSide.none
                            : const BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(
                            borderRadius ?? Dimens.d10.r)),
                    focusedErrorBorder: OutlineInputBorder(
                        borderSide: isHideBorder == true
                            ? BorderSide.none
                            : const BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(
                            borderRadius ?? Dimens.d10.r)),
                    contentPadding: EdgeInsets.only(
                        top: contentPaddingVertical ?? 12.h,
                        bottom: contentPaddingVertical ?? 12.h,
                        left: 10.w,
                        right: 10.w),
                    enabledBorder: OutlineInputBorder(
                        borderSide: isHideBorder == true
                            ? BorderSide.none
                            : BorderSide(
                                color: const Color(0xffE0E5F2), width: 01.sp),
                        borderRadius: BorderRadius.circular(
                            borderRadius ?? Dimens.d10.r)),
                    disabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: AppColors.current.primaryColor),
                        borderRadius: BorderRadius.circular(
                            borderRadius ?? Dimens.d10.r)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: isHideBorder == true
                            ? BorderSide.none
                            : const BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(
                            borderRadius ?? Dimens.d10.r)),
                    suffixIcon: isPassword == true
                        ? GestureDetector(
                            onTap: () {
                              _isShow.value = !_isShow.value;
                            },
                            child: _isShow.value
                                ? const Icon(Ionicons.eye_outline)
                                : Icon(
                                    Ionicons.eye_off_outline,
                                    color: AppColors.current.primaryColor,
                                  ))
                        : suffixIcon,
                    prefixIcon: prefixIcon),
              ),
            );
          },
        ),
      ],
    );
  }
}
