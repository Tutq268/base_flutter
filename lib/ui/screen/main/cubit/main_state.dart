// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:base_flutter/ui/cubit/base_state.dart';

part 'main_state.freezed.dart';

@freezed
class MainState extends BaseState with _$MainState {
  const factory MainState({@Default(false) bool isLoading}) = _MainState;
}
