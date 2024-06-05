// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Project imports:
import 'package:base_flutter/resource/dimens/dimens.dart';
import 'package:base_flutter/ui/resource/styles/app_text_styles.dart';

class CustomTab extends StatefulWidget {
  const CustomTab(
      {super.key,
      required this.onTap,
      required this.label1,
      required this.label2});
  final Function(int index) onTap;
  final String label1;
  final String label2;
  @override
  State<CustomTab> createState() => _CustomTabState();
}

class _CustomTabState extends State<CustomTab> {
  int tabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 3.h),
      decoration: BoxDecoration(
          color: const Color(0xffAFADB1).withOpacity(.2),
          borderRadius: BorderRadius.all(Radius.circular(10.r))),
      child: Row(
        children: [
          Expanded(
              child: GestureDetector(
            onTap: () {
              if (tabIndex == 1) {
                setState(() {
                  tabIndex = 0;
                });
                widget.onTap.call(0);
              }
            },
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: Dimens.d12.w, vertical: Dimens.d6.h),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5.r)),
                  color: tabIndex == 0
                      ? Colors.white
                      : const Color(0xffAFADB1).withOpacity(.1)),
              child: Text(widget.label1,
                  style: AppTextStyles.s14w400Primary().copyWith(
                      color: tabIndex == 0
                          ? Colors.black
                          : const Color(0xff79767D),
                      fontWeight: FontWeight.w500)),
            ),
          )),
          Expanded(
              child: GestureDetector(
            onTap: () {
              if (tabIndex == 0) {
                setState(() {
                  tabIndex = 1;
                });
                widget.onTap.call(1);
              }
            },
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: Dimens.d12.w, vertical: Dimens.d6.h),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5.r)),
                  color: tabIndex == 1
                      ? Colors.white
                      : const Color(0xffAFADB1).withOpacity(.1)),
              child: Text(widget.label2,
                  style: AppTextStyles.s14w400Primary().copyWith(
                      color: tabIndex == 1
                          ? Colors.black
                          : const Color(0xff79767D),
                      fontWeight: FontWeight.w500)),
            ),
          ))
        ],
      ),
    );
  }
}
