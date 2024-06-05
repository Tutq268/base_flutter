// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:base_flutter/data/api/exceptions/server_error.dart';
import 'package:base_flutter/data/api/exceptions/server_error_detail.dart';
import 'package:base_flutter/data/api/mapper/base/base_error_response_mapper.dart';

@Injectable()
// ignore: avoid-dynamic
class JsonArrayErrorResponseMapper
    extends BaseErrorResponseMapper<List<dynamic>> {
  @override
  // ignore: avoid-dynamic
  ServerError mapToServerError(List<dynamic>? errorResponse) {
    return ServerError(
      errors: errorResponse
              ?.map((jsonObject) => ServerErrorDetail(
                    serverStatusCode: jsonObject['code'],
                    message: jsonObject['message'],
                  ))
              .toList(growable: false) ??
          [],
    );
  }
}
