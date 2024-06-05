// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:base_flutter/ui/cubit/base_state.dart';

part 'my_package_state.freezed.dart';

@freezed
class MyPackageState extends BaseState with _$MyPackageState {
  const factory MyPackageState({@Default(false) bool isLoading}) =
      _MyPackageState;
}
