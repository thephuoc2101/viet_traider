// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginModel _$LoginModelFromJson(Map<String, dynamic> json) {
  return _LoginModel.fromJson(json);
}

/// @nodoc
class _$LoginModelTearOff {
  const _$LoginModelTearOff();

  _LoginModel call({bool? isOk, required LoginDataModel2 result}) {
    return _LoginModel(
      isOk: isOk,
      result: result,
    );
  }

  LoginModel fromJson(Map<String, Object?> json) {
    return LoginModel.fromJson(json);
  }
}

/// @nodoc
const $LoginModel = _$LoginModelTearOff();

/// @nodoc
mixin _$LoginModel {
  bool? get isOk => throw _privateConstructorUsedError;
  LoginDataModel2 get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginModelCopyWith<LoginModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginModelCopyWith<$Res> {
  factory $LoginModelCopyWith(
          LoginModel value, $Res Function(LoginModel) then) =
      _$LoginModelCopyWithImpl<$Res>;
  $Res call({bool? isOk, LoginDataModel2 result});

  $LoginDataModel2CopyWith<$Res> get result;
}

/// @nodoc
class _$LoginModelCopyWithImpl<$Res> implements $LoginModelCopyWith<$Res> {
  _$LoginModelCopyWithImpl(this._value, this._then);

  final LoginModel _value;
  // ignore: unused_field
  final $Res Function(LoginModel) _then;

  @override
  $Res call({
    Object? isOk = freezed,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      isOk: isOk == freezed
          ? _value.isOk
          : isOk // ignore: cast_nullable_to_non_nullable
              as bool?,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as LoginDataModel2,
    ));
  }

  @override
  $LoginDataModel2CopyWith<$Res> get result {
    return $LoginDataModel2CopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc
abstract class _$LoginModelCopyWith<$Res> implements $LoginModelCopyWith<$Res> {
  factory _$LoginModelCopyWith(
          _LoginModel value, $Res Function(_LoginModel) then) =
      __$LoginModelCopyWithImpl<$Res>;
  @override
  $Res call({bool? isOk, LoginDataModel2 result});

  @override
  $LoginDataModel2CopyWith<$Res> get result;
}

/// @nodoc
class __$LoginModelCopyWithImpl<$Res> extends _$LoginModelCopyWithImpl<$Res>
    implements _$LoginModelCopyWith<$Res> {
  __$LoginModelCopyWithImpl(
      _LoginModel _value, $Res Function(_LoginModel) _then)
      : super(_value, (v) => _then(v as _LoginModel));

  @override
  _LoginModel get _value => super._value as _LoginModel;

  @override
  $Res call({
    Object? isOk = freezed,
    Object? result = freezed,
  }) {
    return _then(_LoginModel(
      isOk: isOk == freezed
          ? _value.isOk
          : isOk // ignore: cast_nullable_to_non_nullable
              as bool?,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as LoginDataModel2,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginModel implements _LoginModel {
  const _$_LoginModel({this.isOk, required this.result});

  factory _$_LoginModel.fromJson(Map<String, dynamic> json) =>
      _$$_LoginModelFromJson(json);

  @override
  final bool? isOk;
  @override
  final LoginDataModel2 result;

  @override
  String toString() {
    return 'LoginModel(isOk: $isOk, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginModel &&
            const DeepCollectionEquality().equals(other.isOk, isOk) &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isOk),
      const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  _$LoginModelCopyWith<_LoginModel> get copyWith =>
      __$LoginModelCopyWithImpl<_LoginModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginModelToJson(this);
  }
}

abstract class _LoginModel implements LoginModel {
  const factory _LoginModel({bool? isOk, required LoginDataModel2 result}) =
      _$_LoginModel;

  factory _LoginModel.fromJson(Map<String, dynamic> json) =
      _$_LoginModel.fromJson;

  @override
  bool? get isOk;
  @override
  LoginDataModel2 get result;
  @override
  @JsonKey(ignore: true)
  _$LoginModelCopyWith<_LoginModel> get copyWith =>
      throw _privateConstructorUsedError;
}

LoginDataModel2 _$LoginDataModel2FromJson(Map<String, dynamic> json) {
  return _LoginDataModel2.fromJson(json);
}

/// @nodoc
class _$LoginDataModel2TearOff {
  const _$LoginDataModel2TearOff();

  _LoginDataModel2 call(
      {required String accessToken,
      required String refreshToken,
      num? expiresIn}) {
    return _LoginDataModel2(
      accessToken: accessToken,
      refreshToken: refreshToken,
      expiresIn: expiresIn,
    );
  }

  LoginDataModel2 fromJson(Map<String, Object?> json) {
    return LoginDataModel2.fromJson(json);
  }
}

/// @nodoc
const $LoginDataModel2 = _$LoginDataModel2TearOff();

/// @nodoc
mixin _$LoginDataModel2 {
  String get accessToken => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;
  num? get expiresIn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginDataModel2CopyWith<LoginDataModel2> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginDataModel2CopyWith<$Res> {
  factory $LoginDataModel2CopyWith(
          LoginDataModel2 value, $Res Function(LoginDataModel2) then) =
      _$LoginDataModel2CopyWithImpl<$Res>;
  $Res call({String accessToken, String refreshToken, num? expiresIn});
}

/// @nodoc
class _$LoginDataModel2CopyWithImpl<$Res>
    implements $LoginDataModel2CopyWith<$Res> {
  _$LoginDataModel2CopyWithImpl(this._value, this._then);

  final LoginDataModel2 _value;
  // ignore: unused_field
  final $Res Function(LoginDataModel2) _then;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
    Object? expiresIn = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      expiresIn: expiresIn == freezed
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
abstract class _$LoginDataModel2CopyWith<$Res>
    implements $LoginDataModel2CopyWith<$Res> {
  factory _$LoginDataModel2CopyWith(
          _LoginDataModel2 value, $Res Function(_LoginDataModel2) then) =
      __$LoginDataModel2CopyWithImpl<$Res>;
  @override
  $Res call({String accessToken, String refreshToken, num? expiresIn});
}

/// @nodoc
class __$LoginDataModel2CopyWithImpl<$Res>
    extends _$LoginDataModel2CopyWithImpl<$Res>
    implements _$LoginDataModel2CopyWith<$Res> {
  __$LoginDataModel2CopyWithImpl(
      _LoginDataModel2 _value, $Res Function(_LoginDataModel2) _then)
      : super(_value, (v) => _then(v as _LoginDataModel2));

  @override
  _LoginDataModel2 get _value => super._value as _LoginDataModel2;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
    Object? expiresIn = freezed,
  }) {
    return _then(_LoginDataModel2(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      expiresIn: expiresIn == freezed
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginDataModel2 implements _LoginDataModel2 {
  const _$_LoginDataModel2(
      {required this.accessToken, required this.refreshToken, this.expiresIn});

  factory _$_LoginDataModel2.fromJson(Map<String, dynamic> json) =>
      _$$_LoginDataModel2FromJson(json);

  @override
  final String accessToken;
  @override
  final String refreshToken;
  @override
  final num? expiresIn;

  @override
  String toString() {
    return 'LoginDataModel2(accessToken: $accessToken, refreshToken: $refreshToken, expiresIn: $expiresIn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginDataModel2 &&
            const DeepCollectionEquality()
                .equals(other.accessToken, accessToken) &&
            const DeepCollectionEquality()
                .equals(other.refreshToken, refreshToken) &&
            const DeepCollectionEquality().equals(other.expiresIn, expiresIn));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(accessToken),
      const DeepCollectionEquality().hash(refreshToken),
      const DeepCollectionEquality().hash(expiresIn));

  @JsonKey(ignore: true)
  @override
  _$LoginDataModel2CopyWith<_LoginDataModel2> get copyWith =>
      __$LoginDataModel2CopyWithImpl<_LoginDataModel2>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginDataModel2ToJson(this);
  }
}

abstract class _LoginDataModel2 implements LoginDataModel2 {
  const factory _LoginDataModel2(
      {required String accessToken,
      required String refreshToken,
      num? expiresIn}) = _$_LoginDataModel2;

  factory _LoginDataModel2.fromJson(Map<String, dynamic> json) =
      _$_LoginDataModel2.fromJson;

  @override
  String get accessToken;
  @override
  String get refreshToken;
  @override
  num? get expiresIn;
  @override
  @JsonKey(ignore: true)
  _$LoginDataModel2CopyWith<_LoginDataModel2> get copyWith =>
      throw _privateConstructorUsedError;
}

LoginDataModel _$LoginDataModelFromJson(Map<String, dynamic> json) {
  return _LoginDataModel.fromJson(json);
}

/// @nodoc
class _$LoginDataModelTearOff {
  const _$LoginDataModelTearOff();

  _LoginDataModel call(
      {required String access_token,
      required String refresh_token,
      num? expires_in,
      String? id_token}) {
    return _LoginDataModel(
      access_token: access_token,
      refresh_token: refresh_token,
      expires_in: expires_in,
      id_token: id_token,
    );
  }

  LoginDataModel fromJson(Map<String, Object?> json) {
    return LoginDataModel.fromJson(json);
  }
}

/// @nodoc
const $LoginDataModel = _$LoginDataModelTearOff();

/// @nodoc
mixin _$LoginDataModel {
  String get access_token => throw _privateConstructorUsedError;
  String get refresh_token => throw _privateConstructorUsedError;
  num? get expires_in => throw _privateConstructorUsedError;
  String? get id_token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginDataModelCopyWith<LoginDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginDataModelCopyWith<$Res> {
  factory $LoginDataModelCopyWith(
          LoginDataModel value, $Res Function(LoginDataModel) then) =
      _$LoginDataModelCopyWithImpl<$Res>;
  $Res call(
      {String access_token,
      String refresh_token,
      num? expires_in,
      String? id_token});
}

/// @nodoc
class _$LoginDataModelCopyWithImpl<$Res>
    implements $LoginDataModelCopyWith<$Res> {
  _$LoginDataModelCopyWithImpl(this._value, this._then);

  final LoginDataModel _value;
  // ignore: unused_field
  final $Res Function(LoginDataModel) _then;

  @override
  $Res call({
    Object? access_token = freezed,
    Object? refresh_token = freezed,
    Object? expires_in = freezed,
    Object? id_token = freezed,
  }) {
    return _then(_value.copyWith(
      access_token: access_token == freezed
          ? _value.access_token
          : access_token // ignore: cast_nullable_to_non_nullable
              as String,
      refresh_token: refresh_token == freezed
          ? _value.refresh_token
          : refresh_token // ignore: cast_nullable_to_non_nullable
              as String,
      expires_in: expires_in == freezed
          ? _value.expires_in
          : expires_in // ignore: cast_nullable_to_non_nullable
              as num?,
      id_token: id_token == freezed
          ? _value.id_token
          : id_token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$LoginDataModelCopyWith<$Res>
    implements $LoginDataModelCopyWith<$Res> {
  factory _$LoginDataModelCopyWith(
          _LoginDataModel value, $Res Function(_LoginDataModel) then) =
      __$LoginDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String access_token,
      String refresh_token,
      num? expires_in,
      String? id_token});
}

/// @nodoc
class __$LoginDataModelCopyWithImpl<$Res>
    extends _$LoginDataModelCopyWithImpl<$Res>
    implements _$LoginDataModelCopyWith<$Res> {
  __$LoginDataModelCopyWithImpl(
      _LoginDataModel _value, $Res Function(_LoginDataModel) _then)
      : super(_value, (v) => _then(v as _LoginDataModel));

  @override
  _LoginDataModel get _value => super._value as _LoginDataModel;

  @override
  $Res call({
    Object? access_token = freezed,
    Object? refresh_token = freezed,
    Object? expires_in = freezed,
    Object? id_token = freezed,
  }) {
    return _then(_LoginDataModel(
      access_token: access_token == freezed
          ? _value.access_token
          : access_token // ignore: cast_nullable_to_non_nullable
              as String,
      refresh_token: refresh_token == freezed
          ? _value.refresh_token
          : refresh_token // ignore: cast_nullable_to_non_nullable
              as String,
      expires_in: expires_in == freezed
          ? _value.expires_in
          : expires_in // ignore: cast_nullable_to_non_nullable
              as num?,
      id_token: id_token == freezed
          ? _value.id_token
          : id_token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginDataModel implements _LoginDataModel {
  const _$_LoginDataModel(
      {required this.access_token,
      required this.refresh_token,
      this.expires_in,
      this.id_token});

  factory _$_LoginDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_LoginDataModelFromJson(json);

  @override
  final String access_token;
  @override
  final String refresh_token;
  @override
  final num? expires_in;
  @override
  final String? id_token;

  @override
  String toString() {
    return 'LoginDataModel(access_token: $access_token, refresh_token: $refresh_token, expires_in: $expires_in, id_token: $id_token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginDataModel &&
            const DeepCollectionEquality()
                .equals(other.access_token, access_token) &&
            const DeepCollectionEquality()
                .equals(other.refresh_token, refresh_token) &&
            const DeepCollectionEquality()
                .equals(other.expires_in, expires_in) &&
            const DeepCollectionEquality().equals(other.id_token, id_token));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(access_token),
      const DeepCollectionEquality().hash(refresh_token),
      const DeepCollectionEquality().hash(expires_in),
      const DeepCollectionEquality().hash(id_token));

  @JsonKey(ignore: true)
  @override
  _$LoginDataModelCopyWith<_LoginDataModel> get copyWith =>
      __$LoginDataModelCopyWithImpl<_LoginDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginDataModelToJson(this);
  }
}

abstract class _LoginDataModel implements LoginDataModel {
  const factory _LoginDataModel(
      {required String access_token,
      required String refresh_token,
      num? expires_in,
      String? id_token}) = _$_LoginDataModel;

  factory _LoginDataModel.fromJson(Map<String, dynamic> json) =
      _$_LoginDataModel.fromJson;

  @override
  String get access_token;
  @override
  String get refresh_token;
  @override
  num? get expires_in;
  @override
  String? get id_token;
  @override
  @JsonKey(ignore: true)
  _$LoginDataModelCopyWith<_LoginDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
