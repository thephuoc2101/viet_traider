// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'refresh_token_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RefreshTokenRequest _$RefreshTokenRequestFromJson(Map<String, dynamic> json) {
  return _RefreshTokenRequest.fromJson(json);
}

/// @nodoc
class _$RefreshTokenRequestTearOff {
  const _$RefreshTokenRequestTearOff();

  _RefreshTokenRequest call(
      {required String refresh_token,
      String? client_secret = '45b74570-de57-48a0-8cf1-7e08cc1658c6',
      String? grant_type = 'refresh_token',
      String? client_id = 'mobile_flutter_hssv'}) {
    return _RefreshTokenRequest(
      refresh_token: refresh_token,
      client_secret: client_secret,
      grant_type: grant_type,
      client_id: client_id,
    );
  }

  RefreshTokenRequest fromJson(Map<String, Object?> json) {
    return RefreshTokenRequest.fromJson(json);
  }
}

/// @nodoc
const $RefreshTokenRequest = _$RefreshTokenRequestTearOff();

/// @nodoc
mixin _$RefreshTokenRequest {
  String get refresh_token => throw _privateConstructorUsedError;
  String? get client_secret => throw _privateConstructorUsedError;
  String? get grant_type => throw _privateConstructorUsedError;
  String? get client_id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RefreshTokenRequestCopyWith<RefreshTokenRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefreshTokenRequestCopyWith<$Res> {
  factory $RefreshTokenRequestCopyWith(
          RefreshTokenRequest value, $Res Function(RefreshTokenRequest) then) =
      _$RefreshTokenRequestCopyWithImpl<$Res>;
  $Res call(
      {String refresh_token,
      String? client_secret,
      String? grant_type,
      String? client_id});
}

/// @nodoc
class _$RefreshTokenRequestCopyWithImpl<$Res>
    implements $RefreshTokenRequestCopyWith<$Res> {
  _$RefreshTokenRequestCopyWithImpl(this._value, this._then);

  final RefreshTokenRequest _value;
  // ignore: unused_field
  final $Res Function(RefreshTokenRequest) _then;

  @override
  $Res call({
    Object? refresh_token = freezed,
    Object? client_secret = freezed,
    Object? grant_type = freezed,
    Object? client_id = freezed,
  }) {
    return _then(_value.copyWith(
      refresh_token: refresh_token == freezed
          ? _value.refresh_token
          : refresh_token // ignore: cast_nullable_to_non_nullable
              as String,
      client_secret: client_secret == freezed
          ? _value.client_secret
          : client_secret // ignore: cast_nullable_to_non_nullable
              as String?,
      grant_type: grant_type == freezed
          ? _value.grant_type
          : grant_type // ignore: cast_nullable_to_non_nullable
              as String?,
      client_id: client_id == freezed
          ? _value.client_id
          : client_id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$RefreshTokenRequestCopyWith<$Res>
    implements $RefreshTokenRequestCopyWith<$Res> {
  factory _$RefreshTokenRequestCopyWith(_RefreshTokenRequest value,
          $Res Function(_RefreshTokenRequest) then) =
      __$RefreshTokenRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {String refresh_token,
      String? client_secret,
      String? grant_type,
      String? client_id});
}

/// @nodoc
class __$RefreshTokenRequestCopyWithImpl<$Res>
    extends _$RefreshTokenRequestCopyWithImpl<$Res>
    implements _$RefreshTokenRequestCopyWith<$Res> {
  __$RefreshTokenRequestCopyWithImpl(
      _RefreshTokenRequest _value, $Res Function(_RefreshTokenRequest) _then)
      : super(_value, (v) => _then(v as _RefreshTokenRequest));

  @override
  _RefreshTokenRequest get _value => super._value as _RefreshTokenRequest;

  @override
  $Res call({
    Object? refresh_token = freezed,
    Object? client_secret = freezed,
    Object? grant_type = freezed,
    Object? client_id = freezed,
  }) {
    return _then(_RefreshTokenRequest(
      refresh_token: refresh_token == freezed
          ? _value.refresh_token
          : refresh_token // ignore: cast_nullable_to_non_nullable
              as String,
      client_secret: client_secret == freezed
          ? _value.client_secret
          : client_secret // ignore: cast_nullable_to_non_nullable
              as String?,
      grant_type: grant_type == freezed
          ? _value.grant_type
          : grant_type // ignore: cast_nullable_to_non_nullable
              as String?,
      client_id: client_id == freezed
          ? _value.client_id
          : client_id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RefreshTokenRequest implements _RefreshTokenRequest {
  const _$_RefreshTokenRequest(
      {required this.refresh_token,
      this.client_secret = '45b74570-de57-48a0-8cf1-7e08cc1658c6',
      this.grant_type = 'refresh_token',
      this.client_id = 'mobile_flutter_hssv'});

  factory _$_RefreshTokenRequest.fromJson(Map<String, dynamic> json) =>
      _$$_RefreshTokenRequestFromJson(json);

  @override
  final String refresh_token;
  @JsonKey()
  @override
  final String? client_secret;
  @JsonKey()
  @override
  final String? grant_type;
  @JsonKey()
  @override
  final String? client_id;

  @override
  String toString() {
    return 'RefreshTokenRequest(refresh_token: $refresh_token, client_secret: $client_secret, grant_type: $grant_type, client_id: $client_id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RefreshTokenRequest &&
            const DeepCollectionEquality()
                .equals(other.refresh_token, refresh_token) &&
            const DeepCollectionEquality()
                .equals(other.client_secret, client_secret) &&
            const DeepCollectionEquality()
                .equals(other.grant_type, grant_type) &&
            const DeepCollectionEquality().equals(other.client_id, client_id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(refresh_token),
      const DeepCollectionEquality().hash(client_secret),
      const DeepCollectionEquality().hash(grant_type),
      const DeepCollectionEquality().hash(client_id));

  @JsonKey(ignore: true)
  @override
  _$RefreshTokenRequestCopyWith<_RefreshTokenRequest> get copyWith =>
      __$RefreshTokenRequestCopyWithImpl<_RefreshTokenRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RefreshTokenRequestToJson(this);
  }
}

abstract class _RefreshTokenRequest implements RefreshTokenRequest {
  const factory _RefreshTokenRequest(
      {required String refresh_token,
      String? client_secret,
      String? grant_type,
      String? client_id}) = _$_RefreshTokenRequest;

  factory _RefreshTokenRequest.fromJson(Map<String, dynamic> json) =
      _$_RefreshTokenRequest.fromJson;

  @override
  String get refresh_token;
  @override
  String? get client_secret;
  @override
  String? get grant_type;
  @override
  String? get client_id;
  @override
  @JsonKey(ignore: true)
  _$RefreshTokenRequestCopyWith<_RefreshTokenRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
