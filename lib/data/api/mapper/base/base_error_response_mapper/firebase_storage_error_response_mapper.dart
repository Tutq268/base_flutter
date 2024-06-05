// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:base_flutter/data/api/exceptions/server_error.dart';
import 'package:base_flutter/data/api/mapper/base/base_error_response_mapper.dart';

@Injectable()
class FirebaseStorageErrorResponseMapper
    extends BaseErrorResponseMapper<Map<String, dynamic>> {
  @override
  ServerError mapToServerError(Map<String, dynamic>? errorResponse) {
    return ServerError(
      generalServerStatusCode: errorResponse?['error']['code'] as int?,
      generalMessage: errorResponse?['error']['message'] as String?,
    );
  }
}
