// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:base_flutter/ui/cubit/base_state.dart';

part 'service_state.freezed.dart';

@freezed
class ServiceState extends BaseState with _$ServiceState {
  const factory ServiceState({@Default(false) bool isLoading}) = _ServiceState;
}
