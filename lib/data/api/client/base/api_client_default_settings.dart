// Flutter imports:
import 'package:flutter/foundation.dart';

// Package imports:
import 'package:dio/dio.dart';

// Project imports:
import 'package:base_flutter/data/api/mapper/base/base_error_response_mapper.dart';
import 'package:base_flutter/data/api/mapper/base/base_success_response_mapper.dart';
import 'package:base_flutter/data/api/middleware/connectivity_interceptor.dart';
import 'package:base_flutter/data/api/middleware/custom_log_interceptor.dart';
import 'package:base_flutter/data/api/middleware/retry_on_error_interceptor.dart';

class ApiClientDefaultSetting {
  const ApiClientDefaultSetting._();

  static const defaultErrorResponseMapperType =
      ErrorResponseMapperType.jsonObject;
  static const defaultSuccessResponseMapperType =
      SuccessResponseMapperType.dataJsonObject;

  // required interceptors
  static List<Interceptor> requiredInterceptors(Dio dio) => [
        if (kDebugMode) CustomLogInterceptor(),
        ConnectivityInterceptor(),
        RetryOnErrorInterceptor(dio),
      ];
}
