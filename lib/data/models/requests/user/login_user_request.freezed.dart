// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_user_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginUserRequest2 _$LoginUserRequest2FromJson(Map<String, dynamic> json) {
  return _LoginUserRequest2.fromJson(json);
}

/// @nodoc
class _$LoginUserRequest2TearOff {
  const _$LoginUserRequest2TearOff();

  _LoginUserRequest2 call(
      {required String userName,
      required String password,
      required String sessionCode}) {
    return _LoginUserRequest2(
      userName: userName,
      password: password,
      sessionCode: sessionCode,
    );
  }

  LoginUserRequest2 fromJson(Map<String, Object?> json) {
    return LoginUserRequest2.fromJson(json);
  }
}

/// @nodoc
const $LoginUserRequest2 = _$LoginUserRequest2TearOff();

/// @nodoc
mixin _$LoginUserRequest2 {
  String get userName => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get sessionCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginUserRequest2CopyWith<LoginUserRequest2> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginUserRequest2CopyWith<$Res> {
  factory $LoginUserRequest2CopyWith(
          LoginUserRequest2 value, $Res Function(LoginUserRequest2) then) =
      _$LoginUserRequest2CopyWithImpl<$Res>;
  $Res call({String userName, String password, String sessionCode});
}

/// @nodoc
class _$LoginUserRequest2CopyWithImpl<$Res>
    implements $LoginUserRequest2CopyWith<$Res> {
  _$LoginUserRequest2CopyWithImpl(this._value, this._then);

  final LoginUserRequest2 _value;
  // ignore: unused_field
  final $Res Function(LoginUserRequest2) _then;

  @override
  $Res call({
    Object? userName = freezed,
    Object? password = freezed,
    Object? sessionCode = freezed,
  }) {
    return _then(_value.copyWith(
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      sessionCode: sessionCode == freezed
          ? _value.sessionCode
          : sessionCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$LoginUserRequest2CopyWith<$Res>
    implements $LoginUserRequest2CopyWith<$Res> {
  factory _$LoginUserRequest2CopyWith(
          _LoginUserRequest2 value, $Res Function(_LoginUserRequest2) then) =
      __$LoginUserRequest2CopyWithImpl<$Res>;
  @override
  $Res call({String userName, String password, String sessionCode});
}

/// @nodoc
class __$LoginUserRequest2CopyWithImpl<$Res>
    extends _$LoginUserRequest2CopyWithImpl<$Res>
    implements _$LoginUserRequest2CopyWith<$Res> {
  __$LoginUserRequest2CopyWithImpl(
      _LoginUserRequest2 _value, $Res Function(_LoginUserRequest2) _then)
      : super(_value, (v) => _then(v as _LoginUserRequest2));

  @override
  _LoginUserRequest2 get _value => super._value as _LoginUserRequest2;

  @override
  $Res call({
    Object? userName = freezed,
    Object? password = freezed,
    Object? sessionCode = freezed,
  }) {
    return _then(_LoginUserRequest2(
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      sessionCode: sessionCode == freezed
          ? _value.sessionCode
          : sessionCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginUserRequest2 implements _LoginUserRequest2 {
  const _$_LoginUserRequest2(
      {required this.userName,
      required this.password,
      required this.sessionCode});

  factory _$_LoginUserRequest2.fromJson(Map<String, dynamic> json) =>
      _$$_LoginUserRequest2FromJson(json);

  @override
  final String userName;
  @override
  final String password;
  @override
  final String sessionCode;

  @override
  String toString() {
    return 'LoginUserRequest2(userName: $userName, password: $password, sessionCode: $sessionCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginUserRequest2 &&
            const DeepCollectionEquality().equals(other.userName, userName) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.sessionCode, sessionCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userName),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(sessionCode));

  @JsonKey(ignore: true)
  @override
  _$LoginUserRequest2CopyWith<_LoginUserRequest2> get copyWith =>
      __$LoginUserRequest2CopyWithImpl<_LoginUserRequest2>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginUserRequest2ToJson(this);
  }
}

abstract class _LoginUserRequest2 implements LoginUserRequest2 {
  const factory _LoginUserRequest2(
      {required String userName,
      required String password,
      required String sessionCode}) = _$_LoginUserRequest2;

  factory _LoginUserRequest2.fromJson(Map<String, dynamic> json) =
      _$_LoginUserRequest2.fromJson;

  @override
  String get userName;
  @override
  String get password;
  @override
  String get sessionCode;
  @override
  @JsonKey(ignore: true)
  _$LoginUserRequest2CopyWith<_LoginUserRequest2> get copyWith =>
      throw _privateConstructorUsedError;
}

LoginUserRequest _$LoginUserRequestFromJson(Map<String, dynamic> json) {
  return _LoginUserRequest.fromJson(json);
}

/// @nodoc
class _$LoginUserRequestTearOff {
  const _$LoginUserRequestTearOff();

  _LoginUserRequest call(
      {required String username,
      required String password,
      String? client_secret = '45b74570-de57-48a0-8cf1-7e08cc1658c6',
      String? grant_type = 'password',
      String? client_id = 'mobile_flutter_hssv',
      String? scope =
          'offline_access openid email user_name user_type last_name first_name mobile_number avatar'}) {
    return _LoginUserRequest(
      username: username,
      password: password,
      client_secret: client_secret,
      grant_type: grant_type,
      client_id: client_id,
      scope: scope,
    );
  }

  LoginUserRequest fromJson(Map<String, Object?> json) {
    return LoginUserRequest.fromJson(json);
  }
}

/// @nodoc
const $LoginUserRequest = _$LoginUserRequestTearOff();

/// @nodoc
mixin _$LoginUserRequest {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String? get client_secret => throw _privateConstructorUsedError;
  String? get grant_type => throw _privateConstructorUsedError;
  String? get client_id => throw _privateConstructorUsedError;
  String? get scope => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginUserRequestCopyWith<LoginUserRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginUserRequestCopyWith<$Res> {
  factory $LoginUserRequestCopyWith(
          LoginUserRequest value, $Res Function(LoginUserRequest) then) =
      _$LoginUserRequestCopyWithImpl<$Res>;
  $Res call(
      {String username,
      String password,
      String? client_secret,
      String? grant_type,
      String? client_id,
      String? scope});
}

/// @nodoc
class _$LoginUserRequestCopyWithImpl<$Res>
    implements $LoginUserRequestCopyWith<$Res> {
  _$LoginUserRequestCopyWithImpl(this._value, this._then);

  final LoginUserRequest _value;
  // ignore: unused_field
  final $Res Function(LoginUserRequest) _then;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
    Object? client_secret = freezed,
    Object? grant_type = freezed,
    Object? client_id = freezed,
    Object? scope = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
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
      scope: scope == freezed
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$LoginUserRequestCopyWith<$Res>
    implements $LoginUserRequestCopyWith<$Res> {
  factory _$LoginUserRequestCopyWith(
          _LoginUserRequest value, $Res Function(_LoginUserRequest) then) =
      __$LoginUserRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {String username,
      String password,
      String? client_secret,
      String? grant_type,
      String? client_id,
      String? scope});
}

/// @nodoc
class __$LoginUserRequestCopyWithImpl<$Res>
    extends _$LoginUserRequestCopyWithImpl<$Res>
    implements _$LoginUserRequestCopyWith<$Res> {
  __$LoginUserRequestCopyWithImpl(
      _LoginUserRequest _value, $Res Function(_LoginUserRequest) _then)
      : super(_value, (v) => _then(v as _LoginUserRequest));

  @override
  _LoginUserRequest get _value => super._value as _LoginUserRequest;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
    Object? client_secret = freezed,
    Object? grant_type = freezed,
    Object? client_id = freezed,
    Object? scope = freezed,
  }) {
    return _then(_LoginUserRequest(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
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
      scope: scope == freezed
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginUserRequest implements _LoginUserRequest {
  const _$_LoginUserRequest(
      {required this.username,
      required this.password,
      this.client_secret = '45b74570-de57-48a0-8cf1-7e08cc1658c6',
      this.grant_type = 'password',
      this.client_id = 'mobile_flutter_hssv',
      this.scope =
          'offline_access openid email user_name user_type last_name first_name mobile_number avatar'});

  factory _$_LoginUserRequest.fromJson(Map<String, dynamic> json) =>
      _$$_LoginUserRequestFromJson(json);

  @override
  final String username;
  @override
  final String password;
  @JsonKey()
  @override
  final String? client_secret;
  @JsonKey()
  @override
  final String? grant_type;
  @JsonKey()
  @override
  final String? client_id;
  @JsonKey()
  @override
  final String? scope;

  @override
  String toString() {
    return 'LoginUserRequest(username: $username, password: $password, client_secret: $client_secret, grant_type: $grant_type, client_id: $client_id, scope: $scope)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginUserRequest &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.client_secret, client_secret) &&
            const DeepCollectionEquality()
                .equals(other.grant_type, grant_type) &&
            const DeepCollectionEquality().equals(other.client_id, client_id) &&
            const DeepCollectionEquality().equals(other.scope, scope));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(client_secret),
      const DeepCollectionEquality().hash(grant_type),
      const DeepCollectionEquality().hash(client_id),
      const DeepCollectionEquality().hash(scope));

  @JsonKey(ignore: true)
  @override
  _$LoginUserRequestCopyWith<_LoginUserRequest> get copyWith =>
      __$LoginUserRequestCopyWithImpl<_LoginUserRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginUserRequestToJson(this);
  }
}

abstract class _LoginUserRequest implements LoginUserRequest {
  const factory _LoginUserRequest(
      {required String username,
      required String password,
      String? client_secret,
      String? grant_type,
      String? client_id,
      String? scope}) = _$_LoginUserRequest;

  factory _LoginUserRequest.fromJson(Map<String, dynamic> json) =
      _$_LoginUserRequest.fromJson;

  @override
  String get username;
  @override
  String get password;
  @override
  String? get client_secret;
  @override
  String? get grant_type;
  @override
  String? get client_id;
  @override
  String? get scope;
  @override
  @JsonKey(ignore: true)
  _$LoginUserRequestCopyWith<_LoginUserRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
