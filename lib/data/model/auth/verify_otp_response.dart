// Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'verify_otp_response.g.dart';

@JsonSerializable()
class VerifyOtpResponse {
  final String verifyCode;
  final String type;
  final String phone;
  final String id;
  VerifyOtpResponse(
      {required this.id,
      required this.verifyCode,
      required this.phone,
      required this.type});

  factory VerifyOtpResponse.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpResponseFromJson(json);

  Map<String, dynamic> toJson() => _$VerifyOtpResponseToJson(this);
}
