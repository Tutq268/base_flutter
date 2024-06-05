// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_popup_info.freezed.dart';

/// dialog, bottomsheet
@freezed
class AppPopupInfo with _$AppPopupInfo {
  const factory AppPopupInfo.confirmDialog({
    @Default('') String message,
    Function()? onPressed,
  }) = _ConfirmDialog;

  const factory AppPopupInfo.errorWithRetryDialog({
    @Default('') String message,
    Function()? onRetryPressed,
  }) = _ErrorWithRetryDialog;

  const factory AppPopupInfo.requiredLoginDialog() = _RequiredLoginDialog;
  const factory AppPopupInfo.blankBottomSheet({required Widget renderData}) =
      _BlankBottomSheet;
}
