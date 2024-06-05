// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:base_flutter/data/api/exceptions/app_exception_wrapper.dart';
import 'package:base_flutter/ui/cubit/base_state.dart';

part 'common_state.freezed.dart';

@freezed
class CommonState extends BaseState with _$CommonState {
  const factory CommonState({
    @Default(false) bool isLoading,
    AppExceptionWrapper? appExceptionWrapper,
  }) = _CommonState;
}
