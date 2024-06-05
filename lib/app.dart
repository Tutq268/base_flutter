// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';

// Project imports:
import 'package:base_flutter/foundation/constant/ui/device_constants.dart';
import 'package:base_flutter/foundation/constant/ui/locale_constant.dart';
import 'package:base_flutter/foundation/constant/ui/ui_constants.dart';
import 'package:base_flutter/resource/generated/l10n.dart';
import 'package:base_flutter/ui/app_cubit.dart';
import 'package:base_flutter/ui/app_state.dart';
import 'package:base_flutter/ui/di/di.dart' as di;
import 'package:base_flutter/ui/resource/styles/app_colors.dart';
import 'package:base_flutter/ui/resource/styles/app_themes.dart';
import 'package:base_flutter/ui/router/app_navigator_observer.dart';
import 'package:base_flutter/ui/router/router.dart';

final _appRouter = GetIt.instance.get<AppRouter>();
final _botToastBuilder = BotToastInit();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void configLoading() {
    EasyLoading.instance
      ..displayDuration = const Duration(milliseconds: 2000)
      ..indicatorType = EasyLoadingIndicatorType.fadingCircle
      ..loadingStyle = EasyLoadingStyle.dark
      ..indicatorSize = 45.0
      ..radius = 10.0
      ..progressColor = Colors.yellow
      ..backgroundColor = Colors.green
      ..indicatorColor = Colors.yellow
      ..textColor = Colors.yellow
      ..maskColor = Colors.blue.withOpacity(0.5)
      ..userInteractions = true
      ..dismissOnTap = false;
  }

  bool get isAppWidget => true;

  @override
  Widget build(BuildContext context) {
    AppColors.of(context);

    return ScreenUtilInit(
        designSize: const Size(DeviceConstants.designDeviceWidth,
            DeviceConstants.designDeviceHeight),
        builder: (context, _) => BlocProvider(
              create: (context) => di.getIt.get<AppCubit>()..initData(),
              child: BlocConsumer<AppCubit, AppState>(
                listener: (context, state) {
                  // ignore: todo
                  // TODO: implement listener
                },
                buildWhen: (previous, current) =>
                    previous.isDarkMode != current.isDarkMode ||
                    previous.languageCode != current.languageCode,
                builder: (context, state) {
                  if (state.isLoading == true) {
                    return Container();
                  }
                  return MaterialApp.router(
                    builder: (context, child) {
                      final MediaQueryData data = MediaQuery.of(context);

                      return _botToastBuilder(
                          context,
                          MediaQuery(
                            data: data.copyWith(
                                textScaler: const TextScaler.linear(1.0)),
                            child: child ?? const SizedBox.shrink(),
                          ));
                    },
                    routerDelegate: _appRouter.delegate(
                      navigatorObservers: () => [AppNavigatorObserver()],
                    ),
                    localizationsDelegates: const [
                      S.delegate,
                      GlobalMaterialLocalizations.delegate,
                      GlobalWidgetsLocalizations.delegate,
                      GlobalCupertinoLocalizations.delegate,
                    ],
                    localeResolutionCallback:
                        (Locale? locale, Iterable<Locale> supportedLocales) =>
                            supportedLocales.contains(locale)
                                ? locale
                                : const Locale(LocaleConstants.defaultLocale),
                    locale: Locale(state.languageCode.localeCode),
                    supportedLocales: S.delegate.supportedLocales,
                    routeInformationParser: _appRouter.defaultRouteParser(),
                    title: UiConstants.materialAppTitle,
                    color: UiConstants.taskMenuMaterialAppColor,
                    themeMode:
                        state.isDarkMode ? ThemeMode.dark : ThemeMode.light,
                    theme: lightTheme,
                    darkTheme: darkTheme,
                    debugShowCheckedModeBanner: false,
                  );
                },
              ),
            ));
  }

  // List<PageRouteInfo> _mapRouteToPageRouteInfo() {
  //   return widget.initialResource.initialRoutes.map<PageRouteInfo>((e) {
  //     switch (e) {
  //       case InitialAppRoute.login:
  //         return const LoginRoute();
  //       case InitialAppRoute.main:
  //         return const MainRoute();
  //     }
  //   }).toList(growable: false);
  // }
}
