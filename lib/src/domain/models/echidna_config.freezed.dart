// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'echidna_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EchidnaConfig {
  /// The base URL of the Echidna API.
  String get baseUrl => throw _privateConstructorUsedError;

  /// The client key to use for communicating with the Echidna API.
  String get clientKey => throw _privateConstructorUsedError;

  /// The client ID to use for communicating with the Echidna API.
  int get clientId => throw _privateConstructorUsedError;

  /// Create a copy of EchidnaConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EchidnaConfigCopyWith<EchidnaConfig> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EchidnaConfigCopyWith<$Res> {
  factory $EchidnaConfigCopyWith(EchidnaConfig value, $Res Function(EchidnaConfig) then) = _$EchidnaConfigCopyWithImpl<$Res, EchidnaConfig>;
  @useResult
  $Res call({String baseUrl, String clientKey, int clientId});
}

/// @nodoc
class _$EchidnaConfigCopyWithImpl<$Res, $Val extends EchidnaConfig> implements $EchidnaConfigCopyWith<$Res> {
  _$EchidnaConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EchidnaConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseUrl = null,
    Object? clientKey = null,
    Object? clientId = null,
  }) {
    return _then(_value.copyWith(
      baseUrl: null == baseUrl
          ? _value.baseUrl
          : baseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      clientKey: null == clientKey
          ? _value.clientKey
          : clientKey // ignore: cast_nullable_to_non_nullable
              as String,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EchidnaConfigImplCopyWith<$Res> implements $EchidnaConfigCopyWith<$Res> {
  factory _$$EchidnaConfigImplCopyWith(_$EchidnaConfigImpl value, $Res Function(_$EchidnaConfigImpl) then) = __$$EchidnaConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String baseUrl, String clientKey, int clientId});
}

/// @nodoc
class __$$EchidnaConfigImplCopyWithImpl<$Res> extends _$EchidnaConfigCopyWithImpl<$Res, _$EchidnaConfigImpl>
    implements _$$EchidnaConfigImplCopyWith<$Res> {
  __$$EchidnaConfigImplCopyWithImpl(_$EchidnaConfigImpl _value, $Res Function(_$EchidnaConfigImpl) _then) : super(_value, _then);

  /// Create a copy of EchidnaConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseUrl = null,
    Object? clientKey = null,
    Object? clientId = null,
  }) {
    return _then(_$EchidnaConfigImpl(
      baseUrl: null == baseUrl
          ? _value.baseUrl
          : baseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      clientKey: null == clientKey
          ? _value.clientKey
          : clientKey // ignore: cast_nullable_to_non_nullable
              as String,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$EchidnaConfigImpl extends _EchidnaConfig {
  const _$EchidnaConfigImpl({required this.baseUrl, required this.clientKey, required this.clientId}) : super._();

  /// The base URL of the Echidna API.
  @override
  final String baseUrl;

  /// The client key to use for communicating with the Echidna API.
  @override
  final String clientKey;

  /// The client ID to use for communicating with the Echidna API.
  @override
  final int clientId;

  @override
  String toString() {
    return 'EchidnaConfig(baseUrl: $baseUrl, clientKey: $clientKey, clientId: $clientId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EchidnaConfigImpl &&
            (identical(other.baseUrl, baseUrl) || other.baseUrl == baseUrl) &&
            (identical(other.clientKey, clientKey) || other.clientKey == clientKey) &&
            (identical(other.clientId, clientId) || other.clientId == clientId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, baseUrl, clientKey, clientId);

  /// Create a copy of EchidnaConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EchidnaConfigImplCopyWith<_$EchidnaConfigImpl> get copyWith => __$$EchidnaConfigImplCopyWithImpl<_$EchidnaConfigImpl>(this, _$identity);
}

abstract class _EchidnaConfig extends EchidnaConfig {
  const factory _EchidnaConfig({required final String baseUrl, required final String clientKey, required final int clientId}) = _$EchidnaConfigImpl;
  const _EchidnaConfig._() : super._();

  /// The base URL of the Echidna API.
  @override
  String get baseUrl;

  /// The client key to use for communicating with the Echidna API.
  @override
  String get clientKey;

  /// The client ID to use for communicating with the Echidna API.
  @override
  int get clientId;

  /// Create a copy of EchidnaConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EchidnaConfigImplCopyWith<_$EchidnaConfigImpl> get copyWith => throw _privateConstructorUsedError;
}
