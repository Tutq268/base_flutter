// Package imports:
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:base_flutter/data/api/client/base/dio_builder.dart';
import 'package:base_flutter/data/api/client/base/rest_api_client.dart';

@LazySingleton()
class RawApiClient extends RestApiClient {
  RawApiClient()
      : super(
          dio: DioBuilder.createDio(
            options: BaseOptions(baseUrl: ''),
          ),
        );
}
