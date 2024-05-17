import 'package:auto_route/auto_route.dart';
import 'package:base_flutter/ui/navigation/app_route_info.dart';
import 'package:base_flutter/ui/resource/dimens/dimens.dart';
import 'package:base_flutter/ui/resource/styles/app_colors.dart';
import 'package:base_flutter/ui/screen/home/cubit/home_cubit.dart';
import 'package:base_flutter/ui/screen/home/cubit/home_state.dart';
import 'package:base_flutter/ui/share/button/base_button.dart';
import 'package:base_flutter/ui/share/scaffold/base_page_state.dart';
import 'package:base_flutter/ui/share/scaffold/base_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        title: "Trang Chủ",
        isSafeAreaTop: false,
        child: BlocConsumer<HomeCubit, HomeState>(
            listener: (context, state) {},
            builder: (context, state) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: Dimens.d16.w),
                child: Center(

                    // child: BaseButton(
                    //     label: "Đăng Nhập",
                    //     backgroundColor: AppColors.current.primaryColor,
                    //     textColor: Colors.white,
                    //     onPress: () {
                    //       navigator.replace(const AppRouteInfo.login());
                    //     }),
                    ),
              );
            }));
  }
}
