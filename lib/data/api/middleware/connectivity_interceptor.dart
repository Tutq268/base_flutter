// Package imports:
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:base_flutter/data/api/exceptions/remote_exception.dart';
import 'base_interceptor.dart';

@Injectable()
class ConnectivityInterceptor extends BaseInterceptor {
  @override
  int get priority => BaseInterceptor.connectivityPriority;

  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == ConnectivityResult.none) {
      return handler.reject(
        DioException(
          requestOptions: options,
          error: RemoteException(kind: RemoteExceptionKind.noInternet),
        ),
      );
    }

    return super.onRequest(options, handler);
  }
}
