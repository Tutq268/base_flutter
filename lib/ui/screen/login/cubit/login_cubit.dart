// Flutter imports:
import 'package:flutter/foundation.dart';

// Package imports:
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:base_flutter/data/api/app_api_service.dart';
import 'package:base_flutter/data/api/exceptions/app_exception.dart';
import 'package:base_flutter/ui/cubit/base_cubit.dart';
import 'package:base_flutter/ui/navigation/app_route_info.dart';
import 'package:base_flutter/ui/screen/login/cubit/login_state.dart';

@Injectable()
class LoginCubit extends BaseCubit<LoginState> {
  LoginCubit({required this.apiServices}) : super(const LoginState());
  AppApiService apiServices;
  Future<void> initData() async {
    try {} on DioException catch (_) {}
  }

  Future<void> handleLogin({required String phone}) async {
    await runBlocCatching(
        action: () async {
          emit(state.copyWith(isLoading: true));
          final data = await apiServices.login(type: "phone", phone: phone);
          if (data != null && data.phone != "") {
            navigator.push(AppRouteInfo.verifyOtp(true, data.phone ?? ""));
          }
        },
        handleLoading: false,
        doOnSubscribe: () async {},
        doOnError: (AppException e) async {
          debugPrint("do onError: $e");
        },
        doOnSuccessOrError: () async {
          emit(state.copyWith(isLoading: false));
        });
  }
}
