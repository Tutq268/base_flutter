// Flutter imports:
import 'package:flutter/foundation.dart';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:base_flutter/ui/cubit/base_state.dart';
import 'package:base_flutter/ui/enum/language_code/language_code_enum.dart';

part 'app_state.freezed.dart';

@freezed
class AppState extends BaseState with _$AppState {
  const factory AppState({
    @Default(false) bool isLoading,
    @Default(LanguageCode.vn) LanguageCode languageCode,
    @Default(false) bool isDarkMode,
  }) = _AppState;
}
