// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:base_flutter/ui/cubit/base_state.dart';

part 'support_state.freezed.dart';

@freezed
class SupportState extends BaseState with _$SupportState {
  const factory SupportState({@Default(false) isLoading}) = SupporteState;
}
