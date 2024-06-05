// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:base_flutter/ui/cubit/base_state.dart';

part 'verify_otp_state.freezed.dart';

@freezed
class VerifyOtpState extends BaseState with _$VerifyOtpState {
  const factory VerifyOtpState(
      {@Default(false) bool isLoading,
      @Default("") String otp}) = _VerifyOtpState;
}
