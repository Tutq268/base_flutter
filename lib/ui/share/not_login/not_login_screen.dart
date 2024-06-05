// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Project imports:
import 'package:base_flutter/ui/di/di.dart';
import 'package:base_flutter/ui/resource/styles/app_text_styles.dart';
import 'package:base_flutter/ui/router/router.gr.dart';
import 'package:base_flutter/ui/screen/my_package/cubit/my_package_cubit.dart';
import 'package:base_flutter/ui/share/button/base_button.dart';

class NotLoginScreen extends StatelessWidget {
  const NotLoginScreen(
      {super.key, required this.description, this.isLeading = false});
  final String description;
  final bool? isLeading;
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 230.h,
              padding: EdgeInsets.symmetric(
                horizontal: 16.w,
              ),
              alignment: Alignment.center,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10.r)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        description,
                        textAlign: TextAlign.center,
                        style: AppTextStyles.s14w400Primary().copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp,
                            height: 1.3),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      BaseButton.primaryEnable(
                        onPress: () {
                          getIt.resetLazySingleton<MyPackageCubit>();
                          context.router.replace(const LoginRoute());
                        },
                        label: "Đăng nhập ngay",
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
