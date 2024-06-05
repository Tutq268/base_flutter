// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

// Project imports:
import 'package:base_flutter/resource/dimens/dimens.dart';
import 'package:base_flutter/resource/generated/l10n.dart';
import 'package:base_flutter/ui/app_cubit.dart';
import 'package:base_flutter/ui/app_state.dart';
import 'package:base_flutter/ui/enum/language_code/language_code_enum.dart';
import 'package:base_flutter/ui/navigation/app_route_info.dart';
import 'package:base_flutter/ui/screen/home/cubit/home_cubit.dart';
import 'package:base_flutter/ui/screen/home/cubit/home_state.dart';
import 'package:base_flutter/ui/share/button/base_button.dart';
import 'package:base_flutter/ui/share/dropdown/dropdown_primary.dart';
import 'package:base_flutter/ui/share/scaffold/base_page_state.dart';
import 'package:base_flutter/ui/share/scaffold/base_screen.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends BasePageState<HomePage, HomeCubit> {
  @override
  void initState() {
    cubit.initData();
    super.initState();
  }

  @override
  Widget buildPage(BuildContext context) {
    return BaseScreen(
        child: BlocConsumer<HomeCubit, HomeState>(
            listener: (context, state) {},
            builder: (context, state) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: Dimens.d16.w),
                child: Column(
                  children: [
                    BlocBuilder<AppCubit, AppState>(
                      buildWhen: (previous, current) =>
                          previous.isDarkMode != current.isDarkMode,
                      builder: (context, state) {
                        return Container(
                          alignment: Alignment.center,
                          child: GestureDetector(
                              onTap: () {
                                appCubit.appThemeChange(
                                    isDarkMode: state.isDarkMode == true
                                        ? false
                                        : true);
                              },
                              child: Icon(
                                state.isDarkMode
                                    ? Ionicons.sunny_outline
                                    : Ionicons.moon_outline,
                                color: const Color(0xffFB4145),
                                size: 24.sp,
                              )),
                        );
                      },
                    ),
                    SizedBox(
                      height: Dimens.d16.h,
                    ),
                    BlocBuilder<AppCubit, AppState>(
                      buildWhen: (previous, current) =>
                          previous.languageCode != current.languageCode,
                      builder: (context, state) {
                        return Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: Dimens.d32.w),
                          margin: EdgeInsets.symmetric(vertical: Dimens.d16.h),
                          child: DropdownPrimary<LanguageCode>(
                            required: false,
                            listDynamic: LanguageCode.listLanguage
                                .map(
                                  (e) => DropdownMenuItem(
                                    value: e,
                                    child: Text(e.display()),
                                  ),
                                )
                                .toList(),
                            onChange: (v) {
                              appCubit.appLanguageChange(
                                  language: v as LanguageCode);
                            },
                            value: state.languageCode,
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      height: Dimens.d32.h,
                    ),
                    BaseButton(
                      label: S.current.logout,
                      onPress: () async {
                        await appCubit.handleLogout();
                        navigator.replace(const AppRouteInfo.login());
                      },
                    )
                  ],
                ),
              );
            }));
  }
}
