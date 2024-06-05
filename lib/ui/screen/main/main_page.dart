// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Project imports:
import 'package:base_flutter/resource/dimens/dimens.dart';
import 'package:base_flutter/ui/config/key.dart';
import 'package:base_flutter/ui/enum/bottom_tab_enum.dart';
import 'package:base_flutter/ui/resource/styles/app_colors.dart';
import 'package:base_flutter/ui/router/app_navigator_impl.dart';
import 'package:base_flutter/ui/screen/main/cubit/main_cubit.dart';
import 'package:base_flutter/ui/share/scaffold/base_page_state.dart';

@RoutePage()
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends BasePageState<MainPage, MainCubit> {
  final _bottomBarKey = GlobalKey();

  @override
  Widget buildPage(BuildContext context) {
    return PopScope(
      canPop: false,
      child: SafeArea(
        top: false,
        bottom: false,
        child: AutoTabsScaffold(
          routes: (navigator as AppNavigatorImpl).tabRoutes,
          scaffoldKey: AppKey.mainPageScaffoldKey,
          extendBody: true,
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBuilder: (_, tabsRouter) {
            (navigator as AppNavigatorImpl).tabsRouter = tabsRouter;
            return BottomAppBar(
              color: AppColors.current.backGroundColor,
              shape: const CircularNotchedRectangle(),
              notchMargin: 5.0,
              elevation: 0,
              padding: EdgeInsets.zero,
              clipBehavior: Clip.antiAlias,
              child: BottomNavigationBar(
                elevation: 0,
                type: BottomNavigationBarType.fixed,
                showSelectedLabels: true,
                showUnselectedLabels: true,
                key: _bottomBarKey,
                backgroundColor: Colors.transparent,
                currentIndex: tabsRouter.activeIndex,
                selectedFontSize: 12.sp,
                selectedItemColor: const Color(0xffFB4145),
                onTap: (index) {
                  // if (index == 4) {
                  //   AppKey.mainPageScaffoldKey.currentState!.openDrawer();
                  // } else {
                  if (index == tabsRouter.activeIndex) {
                    (navigator).popUntilRootOfCurrentBottomTab();
                  }
                  tabsRouter.setActiveIndex(index);
                  // }
                },
                items: BottomTab.values
                    .map(
                      (tab) => BottomNavigationBarItem(
                        label: tab.title,
                        icon: Image.asset(
                          tab.icon,
                          width: Dimens.d23.w,
                          height: Dimens.d23.w,
                        ),
                        activeIcon: Image.asset(
                          tab.activeIcon,
                          width: Dimens.d23.w,
                          height: Dimens.d23.w,
                        ),
                      ),
                    )
                    .toList(),
              ),
            );
          },
        ),
      ),
    );
  }
}
