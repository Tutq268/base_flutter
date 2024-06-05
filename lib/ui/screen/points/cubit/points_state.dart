// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:base_flutter/ui/cubit/base_state.dart';

part 'points_state.freezed.dart';

@freezed
class PointsState extends BaseState with _$PointsState {
  const factory PointsState({
    @Default(false) bool isLoading,
  }) = _PointsState;
}
