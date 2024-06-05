// Project imports:
import 'server_error_detail.dart';

class ServerError {
  final int? generalServerStatusCode;
  final String? generalServerErrorId;
  final String? generalMessage;
  final List<ServerErrorDetail>? errors;
  ServerError(
      {
      /// server-defined status code
      this.generalServerStatusCode,

      /// server-defined error id
      this.generalServerErrorId,

      /// server-defined message
      this.generalMessage,
      this.errors});
}
