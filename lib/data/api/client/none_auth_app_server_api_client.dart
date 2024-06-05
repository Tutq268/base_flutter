// Package imports:
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:base_flutter/data/api/client/base/dio_builder.dart';
import 'package:base_flutter/data/api/client/base/rest_api_client.dart';
import 'package:base_flutter/data/api/middleware/header_interceptor.dart';
import 'package:base_flutter/data/constant/server/url_constants.dart';

@LazySingleton()
class NoneAuthAppServerApiClient extends RestApiClient {
  NoneAuthAppServerApiClient(HeaderInterceptor headerInterceptor)
      : super(
          dio: DioBuilder.createDio(
            options: BaseOptions(baseUrl: UrlConstants.appApiBaseUrl),
            interceptors: [
              headerInterceptor,
            ],
          ),
        );
}
