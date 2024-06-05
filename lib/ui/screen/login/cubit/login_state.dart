// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:base_flutter/ui/cubit/base_state.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState extends BaseState with _$LoginState {
  const factory LoginState({@Default(false) bool isLoading}) = _LoginState;
}
