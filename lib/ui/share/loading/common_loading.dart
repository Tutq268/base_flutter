// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:lottie/lottie.dart';

// Project imports:
import 'package:base_flutter/resource/dimens/dimens.dart';
import 'package:base_flutter/ui/config/app_path.dart';

class CommonLoading extends StatelessWidget {
  const CommonLoading(
      {super.key,
      this.containerHeight = Dimens.d120,
      this.containerWidth = Dimens.d120,
      this.iconHeight = Dimens.d86,
      this.iconWidth = Dimens.d86});
  final double? containerHeight;
  final double? containerWidth;
  final double? iconHeight;
  final double? iconWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: containerHeight,
      height: containerWidth,
      alignment: Alignment.center,
      child: SizedBox(
        height: iconHeight,
        width: iconWidth,
        child: Lottie.asset(AppPath.lottieLoading1, frameRate: FrameRate.max),
      ),
    );
  }
}
