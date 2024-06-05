// Package imports:
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:base_flutter/data/preference/app_preferences.dart';
import 'package:base_flutter/ui/cubit/base_cubit.dart';
import 'package:base_flutter/ui/navigation/app_route_info.dart';
import 'package:base_flutter/ui/screen/splash/cubit/splash_state.dart';

@Injectable()
class SplashCubit extends BaseCubit<SplashState> {
  SplashCubit({required this.appPreference}) : super(const SplashState());
  final AppPreferences appPreference;
  Future<void> initData() async {
    try {
      final accessToken = await appPreference.accessToken;
      if (accessToken != "") {
        navigator.push(const AppRouteInfo.main());
      } else {
        navigator.push(const AppRouteInfo.login());
      }
    } on DioException catch (_) {}
  }
}
