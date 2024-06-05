// Package imports:
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:base_flutter/data/api/middleware/base_interceptor.dart';
import 'package:base_flutter/data/constant/server/server_request_response_constants.dart';
import 'package:base_flutter/data/preference/app_preferences.dart';

@Injectable()
class AccessTokenInterceptor extends BaseInterceptor {
  AccessTokenInterceptor(this._appPreferences);

  final AppPreferences _appPreferences;

  @override
  int get priority => BaseInterceptor.accessTokenPriority;

  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final token = await _appPreferences.accessToken;
    if (token.isNotEmpty) {
      options.headers[ServerRequestResponseConstants.basicAuthorization] =
          '${ServerRequestResponseConstants.bearer} $token';
    }

    handler.next(options);
  }
}
