// Flutter imports:
import 'package:flutter/foundation.dart';

// Package imports:
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:base_flutter/data/api/app_api_service.dart';
import 'package:base_flutter/data/api/exceptions/app_exception.dart';
import 'package:base_flutter/data/preference/app_preferences.dart';
import 'package:base_flutter/ui/cubit/base_cubit.dart';
import 'package:base_flutter/ui/navigation/app_route_info.dart';
import 'package:base_flutter/ui/screen/verify_otp/cubit/verify_otp_state.dart';

@Injectable()
class VerifyOtpCubit extends BaseCubit<VerifyOtpState> {
  VerifyOtpCubit({required this.apiServices, required this.appPrefrence})
      : super(const VerifyOtpState());
  AppApiService apiServices;
  AppPreferences appPrefrence;

  Future<void> handleVerifySignin(
      {required String phone, required String code}) async {
    try {
      await runBlocCatching(
          action: () async {
            emit(state.copyWith(isLoading: true));
            final data = await apiServices.verifyOtpLogin(
                type: "phone", phone: phone, verifyCode: code);
            if (data != null) {
              await appPrefrence.saveAccessToken(data.id);
              navigator.replace(const AppRouteInfo.main());
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
    } on DioException catch (_) {}
  }
}
