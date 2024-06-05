// Project imports:
import 'package:base_flutter/data/api/exceptions/app_exception.dart';

class ValidationException extends AppException {
  const ValidationException(this.kind) : super(AppExceptionType.validation);

  final ValidationExceptionKind kind;

  @override
  String toString() {
    return 'ValidationException: {kind: $kind}';
  }
}

enum ValidationExceptionKind {
  invalidEmail,
  emptyEmail,
  invalidPassword,
  invalidUserName,
  invalidPhoneNumber,
  invalidDateTime,
  passwordsAreNotMatch,
}
