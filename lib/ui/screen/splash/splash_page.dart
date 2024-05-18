import 'package:auto_route/auto_route.dart';
import 'package:base_flutter/resource/generated/assets.gen.dart';
import 'package:base_flutter/resource/dimens/app_dimen.dart';
import 'package:base_flutter/resource/dimens/dimens.dart';
import 'package:base_flutter/ui/resource/styles/app_colors.dart';
import 'package:base_flutter/ui/resource/styles/app_text_styles.dart';
import 'package:base_flutter/ui/screen/splash/cubit/splash_cubit.dart';
import 'package:base_flutter/ui/share/scaffold/base_page_state.dart';
import 'package:flutter/material.dart';

//ignore_for_file: public_member_api_docs
@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends BasePageState<SplashPage, SplashCubit> {
  @override
  void initState() {
    cubit.initData();
    super.initState();
  }

  @override
  Widget buildPage(BuildContext context) {
    AppDimen.of(context);
    AppColors.of(context);
    return Scaffold(
        body: Container(
      padding: EdgeInsets.zero,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      // decoration: const BoxDecoration(
      //     image: DecorationImage(
      //         image: AssetImage("assets/images/splash/splash_bg.png"),
      //         fit: BoxFit.cover)
      // ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Assets.images.splash.dataOnLogo.image(),
            Container(
              margin: EdgeInsets.only(top: Dimens.d16.responsive()),
              child: Text(
                "",
                style: AppTextStyles.s16w600Primary(),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: Dimens.d16.responsive()),
              child: Text(
                "",
                style: AppTextStyles.s14w400Primary(),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
