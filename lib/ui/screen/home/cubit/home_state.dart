// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:base_flutter/ui/cubit/base_state.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState extends BaseState with _$HomeState {
  const factory HomeState({@Default(false) bool isLoading}) = _HomeState;
}
