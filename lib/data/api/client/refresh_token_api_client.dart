import 'package:base_flutter/data/api/client/base/dio_builder.dart';
import 'package:base_flutter/data/api/client/base/rest_api_client.dart';
import 'package:base_flutter/data/api/middleware/access_token_interceptor.dart';
import 'package:base_flutter/data/api/middleware/header_interceptor.dart';
import 'package:base_flutter/data/constant/server/url_constants.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class RefreshTokenApiClient extends RestApiClient {
  RefreshTokenApiClient(
    HeaderInterceptor headerInterceptor,
    AccessTokenInterceptor accessTokenInterceptor,
  ) : super(
          dio: DioBuilder.createDio(
            options: BaseOptions(baseUrl: UrlConstants.appApiBaseUrl),
            interceptors: [
              headerInterceptor,
              accessTokenInterceptor,
            ],
          ),
        );
}
