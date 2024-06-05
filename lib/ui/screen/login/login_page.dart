// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

// Project imports:
import 'package:base_flutter/resource/dimens/dimens.dart';
import 'package:base_flutter/ui/resource/styles/app_colors.dart';
import 'package:base_flutter/ui/resource/styles/app_text_styles.dart';
import 'package:base_flutter/ui/screen/login/cubit/login_cubit.dart';
import 'package:base_flutter/ui/screen/login/cubit/login_state.dart';
import 'package:base_flutter/ui/share/button/base_button.dart';
import 'package:base_flutter/ui/share/scaffold/base_page_state.dart';
import 'package:base_flutter/ui/share/scaffold/base_screen.dart';
import 'package:base_flutter/ui/share/textfield/app_text_field.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends BasePageState<LoginPage, LoginCubit> {
  String messageError = "";
  bool isEnabbleButton = false;
  String phoneNumber = "";

  @override
  Widget buildPage(BuildContext context) {
    return BaseScreen(
      title: "Đăng nhập",
      // leading: InkWell(
      //     onTap: () {
      //       navigator.replace(const AppRouteInfo.main());
      //     },
      //     child: Icon(
      //       Ionicons.chevron_back_outline,
      //       size: 26.sp,
      //       color: AppColors.current.primaryTextColor,
      //     )),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: Dimens.d12.w),
        child: Column(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.topCenter,
                margin: EdgeInsets.only(top: Dimens.d32.h),
                child: Column(
                  children: [
                    Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.symmetric(vertical: Dimens.d16.h),
                        child: Text("Số điện thoại",
                            style: AppTextStyles.sectionTitle().copyWith(
                                fontWeight: FontWeight.w500,
                                color: AppColors.current.primaryTextColor))),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: Dimens.d12.h),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "+84",
                                style: AppTextStyles.sectionTitle().copyWith(
                                    color: AppColors.current.primaryTextColor,
                                    fontWeight: FontWeight.w500),
                              ),
                              Icon(
                                Ionicons.chevron_down_outline,
                                size: 24.sp,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 50.h,
                            width: double.infinity,
                            child: AppTextField(
                              hintText: "0988123456",
                              hintTextSize: 22.sp,
                              autoFocus: true,
                              maxLines: 1,
                              keyboardType: TextInputType.phone,
                              borderRadius: 10.r,
                              isHideBorder: true,
                              textFiledStyle: AppTextStyles.sectionTitle()
                                  .copyWith(
                                      color: AppColors.current.primaryColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 22.sp),
                              fillColor: AppColors.current.backGroundColor,
                              contentPaddingVertical: 0.h,
                              onChanged: (text) {
                                if (text.length > 10) {
                                  setState(() {
                                    messageError = "Số điện thoại không đúng";
                                    isEnabbleButton = false;
                                    phoneNumber = text;
                                  });
                                } else if (text.length == 10) {
                                  setState(() {
                                    isEnabbleButton = true;
                                    phoneNumber = text;
                                  });
                                } else {
                                  setState(() {
                                    isEnabbleButton = false;
                                    messageError = "";
                                    phoneNumber = text;
                                  });
                                }
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                    Visibility(
                      visible: messageError != "",
                      child: Container(
                        margin: EdgeInsets.only(left: 0.w),
                        child: Text(messageError,
                            style: AppTextStyles.s12w400PrimaryColor()),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
                physics: const NeverScrollableScrollPhysics(),
                child: Container(
                    padding: EdgeInsets.symmetric(vertical: Dimens.d16.h),
                    child: Column(
                      children: [
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text:
                                'Bằng việc đăng ký và đăng nhập vào DataOn, bạn đồng ý với ',
                            style: AppTextStyles.s12w400PrimaryColor().copyWith(
                                color: AppColors.current.primaryTextColor),
                            children: <TextSpan>[
                              TextSpan(
                                  text: "Điều khoản dịch vụ",
                                  style: AppTextStyles.s12w400PrimaryColor()
                                      .copyWith(
                                          color: AppColors.current.primaryColor,
                                          decoration:
                                              TextDecoration.underline)),
                              TextSpan(
                                  text: " và ",
                                  style: AppTextStyles.s12w400PrimaryColor()
                                      .copyWith(
                                          color: AppColors
                                              .current.primaryTextColor)),
                              TextSpan(
                                  text: "Chính sách riêng tư",
                                  style: AppTextStyles.s12w400PrimaryColor()
                                      .copyWith(
                                          color: AppColors.current.primaryColor,
                                          decoration:
                                              TextDecoration.underline)),
                              TextSpan(
                                  text: " của chúng tôi.",
                                  style: AppTextStyles.s12w400PrimaryColor()
                                      .copyWith(
                                          color: AppColors
                                              .current.primaryTextColor)),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: Dimens.d10.h),
                          child: BlocBuilder<LoginCubit, LoginState>(
                            builder: (context, state) {
                              return BaseButton(
                                label: "Xác nhận",
                                textColor: Colors.white,
                                isLoading: state.isLoading,
                                backgroundColor: isEnabbleButton == false
                                    ? const Color(0xffFDB3B5)
                                    : AppColors.current.primaryColor,
                                onPress: () async {
                                  if (isEnabbleButton == false) return;
                                  if (state.isLoading == true) return;
                                  cubit.handleLogin(phone: phoneNumber);
                                },
                              );
                            },
                          ),
                        )
                      ],
                    )))
          ],
        ),
      ),
    );
  }
}
