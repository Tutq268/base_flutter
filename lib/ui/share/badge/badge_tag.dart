// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Project imports:
import 'package:base_flutter/ui/resource/styles/app_colors.dart';
import 'package:base_flutter/ui/resource/styles/app_text_styles.dart';

class BadgeTag extends StatelessWidget {
  const BadgeTag({super.key, this.icon, required this.title});
  final Widget? icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.r),
          color: AppColors.current.primaryColor.withOpacity(.2)),
      padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(right: 4.w),
            child: icon,
          ),
          Text(
            title,
            style: AppTextStyles.s14w400Primary()
                .copyWith(color: AppColors.current.primaryColor),
          )
        ],
      ),
    );
  }
}
