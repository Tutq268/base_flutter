// Project imports:
import 'package:base_flutter/foundation/validator/validation_exception.dart';
import '../exceptions/app_exception.dart';
import '../exceptions/remote_exception.dart';

class ExceptionMessageMapper {
  const ExceptionMessageMapper();

  String map(AppException appException) {
    switch (appException.appExceptionType) {
      case AppExceptionType.remote:
        final exception = appException as RemoteException;
        switch (exception.kind) {
          case RemoteExceptionKind.badCertificate:
            return 'badCertificateException';
          case RemoteExceptionKind.noInternet:
            return 'noInternetException';
          case RemoteExceptionKind.network:
            return "Can not connect to this host";
          case RemoteExceptionKind.serverDefined:
            return exception.generalServerMessage ?? 'unknownException';
          case RemoteExceptionKind.serverUndefined:
            return exception.generalServerMessage ?? 'unknownException';
          case RemoteExceptionKind.timeout:
            return 'timeoutException';
          case RemoteExceptionKind.cancellation:
            return 'cancellationException';
          case RemoteExceptionKind.unknown:
            return 'unknownException: ${exception.rootException}';
          case RemoteExceptionKind.refreshTokenFailed:
            return 'tokenExpired';
          default:
            return '';
        }
      case AppExceptionType.parse:
        return 'parseException';
      case AppExceptionType.remoteConfig:
        return 'unknownException';
      case AppExceptionType.uncaught:
        return 'unknownException';
      case AppExceptionType.validation:
        final exception = appException as ValidationException;
        switch (exception.kind) {
          case ValidationExceptionKind.emptyEmail:
            return 'emptyEmail';
          case ValidationExceptionKind.invalidEmail:
            return 'invalidEmail';
          case ValidationExceptionKind.invalidPassword:
            return 'invalidPassword';
          case ValidationExceptionKind.invalidUserName:
            return 'invalidUserName';
          case ValidationExceptionKind.invalidPhoneNumber:
            return 'invalidPhoneNumber';
          case ValidationExceptionKind.invalidDateTime:
            return 'invalidDateTime';
          case ValidationExceptionKind.passwordsAreNotMatch:
            return 'passwordsAreNotMatch';
        }
    }
  }
}
