// Project imports:
import 'package:base_flutter/data/enum/duration_constants.dart';
import 'package:base_flutter/foundation/helper/function/function.dart';
import 'package:base_flutter/ui/navigation/app_navigator.dart';
import 'package:base_flutter/ui/navigation/app_popup_info.dart';
import '../exceptions/app_exception.dart';
import '../exceptions/app_exception_wrapper.dart';
import '../exceptions/remote_exception.dart';

class ExceptionHandler {
  const ExceptionHandler({
    required this.navigator,
    required this.listener,
  });

  final AppNavigator navigator;
  final ExceptionHandlerListener listener;

  Future<void> handleException(
    AppExceptionWrapper appExceptionWrapper,
    String commonExceptionMessage,
  ) async {
    final message =
        appExceptionWrapper.overrideMessage ?? commonExceptionMessage;

    switch (appExceptionWrapper.appException.appExceptionType) {
      case AppExceptionType.remote:
        final exception = appExceptionWrapper.appException as RemoteException;
        switch (exception.kind) {
          case RemoteExceptionKind.refreshTokenFailed:
            await _showErrorDialog(
              isRefreshTokenFailed: true,
              message: message,
              onPressed: Func0(() {
                navigator.pop();
              }).call,
            );
            break;
          case RemoteExceptionKind.noInternet:
          case RemoteExceptionKind.timeout:
            await _showErrorDialogWithRetry(
              message: message,
              onRetryPressed: Func0(() async {
                await navigator.pop();
                await appExceptionWrapper.doOnRetry?.call();
              }).call,
            );
            break;
          default:
            await _showErrorDialog(
              message: message,
              onPressed: Func0(() {
                navigator.pop(useRootNavigator: true);
                // Navigator.of(context).pop();
              }).call,
            );
            break;
        }
        break;
      case AppExceptionType.parse:
        return _showErrorSnackBar(message: message);
      case AppExceptionType.remoteConfig:
        return _showErrorSnackBar(message: message);
      case AppExceptionType.uncaught:
        return;
      case AppExceptionType.validation:
        await _showErrorDialog(message: message);
        break;
    }
  }

  void _showErrorSnackBar({
    required String message,
    Duration duration = DurationConstants.defaultErrorVisibleDuration,
  }) {
    navigator.showErrorSnackBar(message, duration: duration);
  }

  Future<void> _showErrorDialog({
    required String message,
    Function()? onPressed,
    bool isRefreshTokenFailed = false,
  }) async {
    await navigator
        .showDialog(AppPopupInfo.confirmDialog(
      message: message,
      onPressed: onPressed,
    ))
        .then((value) {
      if (isRefreshTokenFailed) {
        listener.onRefreshTokenFailed();
      }
    });
  }

  Future<void> _showErrorDialogWithRetry({
    required String message,
    required Function()? onRetryPressed,
  }) async {
    await navigator.showDialog(AppPopupInfo.errorWithRetryDialog(
      message: message,
      onRetryPressed: onRetryPressed,
    ));
  }
}

abstract class ExceptionHandlerListener {
  void onRefreshTokenFailed();
}
