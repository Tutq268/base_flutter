// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_auth_response_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ApiAuthResponseData _$ApiAuthResponseDataFromJson(Map<String, dynamic> json) {
  return _ApiAuthResponseData.fromJson(json);
}

/// @nodoc
mixin _$ApiAuthResponseData {
  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this ApiAuthResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiAuthResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiAuthResponseDataCopyWith<ApiAuthResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiAuthResponseDataCopyWith<$Res> {
  factory $ApiAuthResponseDataCopyWith(
          ApiAuthResponseData value, $Res Function(ApiAuthResponseData) then) =
      _$ApiAuthResponseDataCopyWithImpl<$Res, ApiAuthResponseData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'type') String? type,
      @JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'id') String? id});
}

/// @nodoc
class _$ApiAuthResponseDataCopyWithImpl<$Res, $Val extends ApiAuthResponseData>
    implements $ApiAuthResponseDataCopyWith<$Res> {
  _$ApiAuthResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiAuthResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? phone = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiAuthResponseDataImplCopyWith<$Res>
    implements $ApiAuthResponseDataCopyWith<$Res> {
  factory _$$ApiAuthResponseDataImplCopyWith(_$ApiAuthResponseDataImpl value,
          $Res Function(_$ApiAuthResponseDataImpl) then) =
      __$$ApiAuthResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') String? type,
      @JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'id') String? id});
}

/// @nodoc
class __$$ApiAuthResponseDataImplCopyWithImpl<$Res>
    extends _$ApiAuthResponseDataCopyWithImpl<$Res, _$ApiAuthResponseDataImpl>
    implements _$$ApiAuthResponseDataImplCopyWith<$Res> {
  __$$ApiAuthResponseDataImplCopyWithImpl(_$ApiAuthResponseDataImpl _value,
      $Res Function(_$ApiAuthResponseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiAuthResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? phone = freezed,
    Object? id = freezed,
  }) {
    return _then(_$ApiAuthResponseDataImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiAuthResponseDataImpl implements _ApiAuthResponseData {
  const _$ApiAuthResponseDataImpl(
      {@JsonKey(name: 'type') this.type,
      @JsonKey(name: 'phone') this.phone,
      @JsonKey(name: 'id') this.id});

  factory _$ApiAuthResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiAuthResponseDataImplFromJson(json);

  @override
  @JsonKey(name: 'type')
  final String? type;
  @override
  @JsonKey(name: 'phone')
  final String? phone;
  @override
  @JsonKey(name: 'id')
  final String? id;

  @override
  String toString() {
    return 'ApiAuthResponseData(type: $type, phone: $phone, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiAuthResponseDataImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, phone, id);

  /// Create a copy of ApiAuthResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiAuthResponseDataImplCopyWith<_$ApiAuthResponseDataImpl> get copyWith =>
      __$$ApiAuthResponseDataImplCopyWithImpl<_$ApiAuthResponseDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiAuthResponseDataImplToJson(
      this,
    );
  }
}

abstract class _ApiAuthResponseData implements ApiAuthResponseData {
  const factory _ApiAuthResponseData(
      {@JsonKey(name: 'type') final String? type,
      @JsonKey(name: 'phone') final String? phone,
      @JsonKey(name: 'id') final String? id}) = _$ApiAuthResponseDataImpl;

  factory _ApiAuthResponseData.fromJson(Map<String, dynamic> json) =
      _$ApiAuthResponseDataImpl.fromJson;

  @override
  @JsonKey(name: 'type')
  String? get type;
  @override
  @JsonKey(name: 'phone')
  String? get phone;
  @override
  @JsonKey(name: 'id')
  String? get id;

  /// Create a copy of ApiAuthResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiAuthResponseDataImplCopyWith<_$ApiAuthResponseDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
