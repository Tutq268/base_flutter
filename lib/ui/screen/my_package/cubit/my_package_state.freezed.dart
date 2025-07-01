// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_package_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MyPackageState {
  bool get isLoading => throw _privateConstructorUsedError;

  /// Create a copy of MyPackageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyPackageStateCopyWith<MyPackageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyPackageStateCopyWith<$Res> {
  factory $MyPackageStateCopyWith(
          MyPackageState value, $Res Function(MyPackageState) then) =
      _$MyPackageStateCopyWithImpl<$Res, MyPackageState>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class _$MyPackageStateCopyWithImpl<$Res, $Val extends MyPackageState>
    implements $MyPackageStateCopyWith<$Res> {
  _$MyPackageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyPackageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyPackageStateImplCopyWith<$Res>
    implements $MyPackageStateCopyWith<$Res> {
  factory _$$MyPackageStateImplCopyWith(_$MyPackageStateImpl value,
          $Res Function(_$MyPackageStateImpl) then) =
      __$$MyPackageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$MyPackageStateImplCopyWithImpl<$Res>
    extends _$MyPackageStateCopyWithImpl<$Res, _$MyPackageStateImpl>
    implements _$$MyPackageStateImplCopyWith<$Res> {
  __$$MyPackageStateImplCopyWithImpl(
      _$MyPackageStateImpl _value, $Res Function(_$MyPackageStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyPackageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$MyPackageStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MyPackageStateImpl implements _MyPackageState {
  const _$MyPackageStateImpl({this.isLoading = false});

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'MyPackageState(isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyPackageStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  /// Create a copy of MyPackageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyPackageStateImplCopyWith<_$MyPackageStateImpl> get copyWith =>
      __$$MyPackageStateImplCopyWithImpl<_$MyPackageStateImpl>(
          this, _$identity);
}

abstract class _MyPackageState implements MyPackageState {
  const factory _MyPackageState({final bool isLoading}) = _$MyPackageStateImpl;

  @override
  bool get isLoading;

  /// Create a copy of MyPackageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyPackageStateImplCopyWith<_$MyPackageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
