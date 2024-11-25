// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserID {
  String get userId => throw _privateConstructorUsedError;

  /// Create a copy of UserID
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserIDCopyWith<UserID> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserIDCopyWith<$Res> {
  factory $UserIDCopyWith(UserID value, $Res Function(UserID) then) =
      _$UserIDCopyWithImpl<$Res, UserID>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class _$UserIDCopyWithImpl<$Res, $Val extends UserID>
    implements $UserIDCopyWith<$Res> {
  _$UserIDCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserID
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserIDImplCopyWith<$Res> implements $UserIDCopyWith<$Res> {
  factory _$$UserIDImplCopyWith(
          _$UserIDImpl value, $Res Function(_$UserIDImpl) then) =
      __$$UserIDImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$UserIDImplCopyWithImpl<$Res>
    extends _$UserIDCopyWithImpl<$Res, _$UserIDImpl>
    implements _$$UserIDImplCopyWith<$Res> {
  __$$UserIDImplCopyWithImpl(
      _$UserIDImpl _value, $Res Function(_$UserIDImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserID
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$UserIDImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserIDImpl extends _UserID {
  const _$UserIDImpl({required this.userId}) : super._();

  @override
  final String userId;

  @override
  String toString() {
    return 'UserID(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserIDImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  /// Create a copy of UserID
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserIDImplCopyWith<_$UserIDImpl> get copyWith =>
      __$$UserIDImplCopyWithImpl<_$UserIDImpl>(this, _$identity);
}

abstract class _UserID extends UserID {
  const factory _UserID({required final String userId}) = _$UserIDImpl;
  const _UserID._() : super._();

  @override
  String get userId;

  /// Create a copy of UserID
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserIDImplCopyWith<_$UserIDImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
