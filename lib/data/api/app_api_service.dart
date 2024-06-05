// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:base_flutter/data/api/client/auth_app_server_api_client.dart';
import 'package:base_flutter/data/api/client/base/rest_api_client.dart';
import 'package:base_flutter/data/api/client/none_auth_app_server_api_client.dart';
import 'package:base_flutter/data/api/model/api_auth_response_data.dart';
import 'package:base_flutter/data/model/auth/verify_otp_response.dart';

@LazySingleton()
class AppApiService {
  AppApiService(
    this._noneAuthAppServerApiClient,
    this._authAppServerApiClient,
    // this._randomUserApiClient,
  );
  final NoneAuthAppServerApiClient _noneAuthAppServerApiClient;
  final AuthAppServerApiClient _authAppServerApiClient;
  // final RandomUserApiClient _randomUserApiClient;

  Future<ApiAuthResponseData?> login({
    required String type,
    required String phone,
  }) async {
    final data = await _noneAuthAppServerApiClient.requestNormal(
      method: RestMethod.post,
      path: '/api/mobile/account/login?hash=gF81ddGY34I',
      body: {
        'type': type,
        'phone': phone,
      },
    );
    if (data == null) return null;
    return ApiAuthResponseData.fromJson(data);
  }

  Future<VerifyOtpResponse?> verifyOtpLogin(
      {required String type,
      required String phone,
      required String verifyCode}) async {
    final data = await _noneAuthAppServerApiClient.requestNormal(
      method: RestMethod.post,
      path: '/api/mobile/account/verify-register?hash=gF81ddGY34I',
      body: {
        'verifyCode': verifyCode,
        'type': type,
        'phone': phone,
      },
    );
    if (data == null) return null;
    return VerifyOtpResponse.fromJson(data);
  }

  Future<void> logout() async {
    await _authAppServerApiClient.request(
      method: RestMethod.post,
      path: '/v1/auth/logout',
    );
  }

  Future<void> forgotPassword(String email) async {
    await _noneAuthAppServerApiClient.request(
      method: RestMethod.post,
      path: '/v1/auth/forgot-password',
      body: {
        'email': email,
      },
    );
  }

  Future<void> resetPassword({
    required String token,
    required String email,
    required String password,
  }) async {
    await _noneAuthAppServerApiClient.request(
      method: RestMethod.post,
      path: '/v1/auth/reset-password',
      body: {
        'token': token,
        'email': email,
        'password': password,
        'password_confirmation': password,
      },
    );
  }
}
