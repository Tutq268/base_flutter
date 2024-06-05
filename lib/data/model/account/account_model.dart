// Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'account_model.g.dart';

@JsonSerializable()
class AccountModel {
  final String id;
  final String username;
  final String phoneNumber;
  @JsonKey(name: 'point', includeIfNull: true, defaultValue: 0)
  double point;

  String get encodePhoneNumber =>
      "${phoneNumber.substring(0, 3)}****${phoneNumber.substring(phoneNumber.length - 4, phoneNumber.length - 1)}";
  AccountModel(
      {required this.id,
      required this.username,
      required this.phoneNumber,
      required this.point});

  factory AccountModel.fromJson(Map<String, dynamic> json) =>
      _$AccountModelFromJson(json);

  Map<String, dynamic> toJson() => _$AccountModelToJson(this);
}
