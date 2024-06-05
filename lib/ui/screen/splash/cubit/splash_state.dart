// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:base_flutter/ui/cubit/base_state.dart';

part 'splash_state.freezed.dart';

@freezed
class SplashState extends BaseState with _$SplashState {
  const factory SplashState({@Default(false) bool isLoading}) = _SplashState;
}
