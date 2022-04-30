// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) {
  return _ProfileModel.fromJson(json);
}

/// @nodoc
class _$ProfileModelTearOff {
  const _$ProfileModelTearOff();

  _ProfileModel call(
      {required String userId,
      String? email,
      String? phoneNumber,
      String? mobileNumber,
      String? firstName,
      String? lastName,
      String? avatar,
      String? sessionCode}) {
    return _ProfileModel(
      userId: userId,
      email: email,
      phoneNumber: phoneNumber,
      mobileNumber: mobileNumber,
      firstName: firstName,
      lastName: lastName,
      avatar: avatar,
      sessionCode: sessionCode,
    );
  }

  ProfileModel fromJson(Map<String, Object?> json) {
    return ProfileModel.fromJson(json);
  }
}

/// @nodoc
const $ProfileModel = _$ProfileModelTearOff();

/// @nodoc
mixin _$ProfileModel {
  String get userId => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get mobileNumber => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  String? get sessionCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileModelCopyWith<ProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileModelCopyWith<$Res> {
  factory $ProfileModelCopyWith(
          ProfileModel value, $Res Function(ProfileModel) then) =
      _$ProfileModelCopyWithImpl<$Res>;
  $Res call(
      {String userId,
      String? email,
      String? phoneNumber,
      String? mobileNumber,
      String? firstName,
      String? lastName,
      String? avatar,
      String? sessionCode});
}

/// @nodoc
class _$ProfileModelCopyWithImpl<$Res> implements $ProfileModelCopyWith<$Res> {
  _$ProfileModelCopyWithImpl(this._value, this._then);

  final ProfileModel _value;
  // ignore: unused_field
  final $Res Function(ProfileModel) _then;

  @override
  $Res call({
    Object? userId = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? mobileNumber = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? avatar = freezed,
    Object? sessionCode = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNumber: mobileNumber == freezed
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionCode: sessionCode == freezed
          ? _value.sessionCode
          : sessionCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ProfileModelCopyWith<$Res>
    implements $ProfileModelCopyWith<$Res> {
  factory _$ProfileModelCopyWith(
          _ProfileModel value, $Res Function(_ProfileModel) then) =
      __$ProfileModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String userId,
      String? email,
      String? phoneNumber,
      String? mobileNumber,
      String? firstName,
      String? lastName,
      String? avatar,
      String? sessionCode});
}

/// @nodoc
class __$ProfileModelCopyWithImpl<$Res> extends _$ProfileModelCopyWithImpl<$Res>
    implements _$ProfileModelCopyWith<$Res> {
  __$ProfileModelCopyWithImpl(
      _ProfileModel _value, $Res Function(_ProfileModel) _then)
      : super(_value, (v) => _then(v as _ProfileModel));

  @override
  _ProfileModel get _value => super._value as _ProfileModel;

  @override
  $Res call({
    Object? userId = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? mobileNumber = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? avatar = freezed,
    Object? sessionCode = freezed,
  }) {
    return _then(_ProfileModel(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNumber: mobileNumber == freezed
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionCode: sessionCode == freezed
          ? _value.sessionCode
          : sessionCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ProfileModel implements _ProfileModel {
  const _$_ProfileModel(
      {required this.userId,
      this.email,
      this.phoneNumber,
      this.mobileNumber,
      this.firstName,
      this.lastName,
      this.avatar,
      this.sessionCode});

  factory _$_ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileModelFromJson(json);

  @override
  final String userId;
  @override
  final String? email;
  @override
  final String? phoneNumber;
  @override
  final String? mobileNumber;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? avatar;
  @override
  final String? sessionCode;

  @override
  String toString() {
    return 'ProfileModel(userId: $userId, email: $email, phoneNumber: $phoneNumber, mobileNumber: $mobileNumber, firstName: $firstName, lastName: $lastName, avatar: $avatar, sessionCode: $sessionCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProfileModel &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality()
                .equals(other.mobileNumber, mobileNumber) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality().equals(other.avatar, avatar) &&
            const DeepCollectionEquality()
                .equals(other.sessionCode, sessionCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(mobileNumber),
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(avatar),
      const DeepCollectionEquality().hash(sessionCode));

  @JsonKey(ignore: true)
  @override
  _$ProfileModelCopyWith<_ProfileModel> get copyWith =>
      __$ProfileModelCopyWithImpl<_ProfileModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileModelToJson(this);
  }
}

abstract class _ProfileModel implements ProfileModel {
  const factory _ProfileModel(
      {required String userId,
      String? email,
      String? phoneNumber,
      String? mobileNumber,
      String? firstName,
      String? lastName,
      String? avatar,
      String? sessionCode}) = _$_ProfileModel;

  factory _ProfileModel.fromJson(Map<String, dynamic> json) =
      _$_ProfileModel.fromJson;

  @override
  String get userId;
  @override
  String? get email;
  @override
  String? get phoneNumber;
  @override
  String? get mobileNumber;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get avatar;
  @override
  String? get sessionCode;
  @override
  @JsonKey(ignore: true)
  _$ProfileModelCopyWith<_ProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

UserProfileModel _$UserProfileModelFromJson(Map<String, dynamic> json) {
  return _UserProfileModel.fromJson(json);
}

/// @nodoc
class _$UserProfileModelTearOff {
  const _$UserProfileModelTearOff();

  _UserProfileModel call(
      {String? sub,
      String? email,
      String? mobile_number,
      String? first_name,
      String? last_name,
      String? avatar}) {
    return _UserProfileModel(
      sub: sub,
      email: email,
      mobile_number: mobile_number,
      first_name: first_name,
      last_name: last_name,
      avatar: avatar,
    );
  }

  UserProfileModel fromJson(Map<String, Object?> json) {
    return UserProfileModel.fromJson(json);
  }
}

/// @nodoc
const $UserProfileModel = _$UserProfileModelTearOff();

/// @nodoc
mixin _$UserProfileModel {
  String? get sub => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get mobile_number => throw _privateConstructorUsedError;
  String? get first_name => throw _privateConstructorUsedError;
  String? get last_name => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProfileModelCopyWith<UserProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileModelCopyWith<$Res> {
  factory $UserProfileModelCopyWith(
          UserProfileModel value, $Res Function(UserProfileModel) then) =
      _$UserProfileModelCopyWithImpl<$Res>;
  $Res call(
      {String? sub,
      String? email,
      String? mobile_number,
      String? first_name,
      String? last_name,
      String? avatar});
}

/// @nodoc
class _$UserProfileModelCopyWithImpl<$Res>
    implements $UserProfileModelCopyWith<$Res> {
  _$UserProfileModelCopyWithImpl(this._value, this._then);

  final UserProfileModel _value;
  // ignore: unused_field
  final $Res Function(UserProfileModel) _then;

  @override
  $Res call({
    Object? sub = freezed,
    Object? email = freezed,
    Object? mobile_number = freezed,
    Object? first_name = freezed,
    Object? last_name = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_value.copyWith(
      sub: sub == freezed
          ? _value.sub
          : sub // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile_number: mobile_number == freezed
          ? _value.mobile_number
          : mobile_number // ignore: cast_nullable_to_non_nullable
              as String?,
      first_name: first_name == freezed
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String?,
      last_name: last_name == freezed
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$UserProfileModelCopyWith<$Res>
    implements $UserProfileModelCopyWith<$Res> {
  factory _$UserProfileModelCopyWith(
          _UserProfileModel value, $Res Function(_UserProfileModel) then) =
      __$UserProfileModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? sub,
      String? email,
      String? mobile_number,
      String? first_name,
      String? last_name,
      String? avatar});
}

/// @nodoc
class __$UserProfileModelCopyWithImpl<$Res>
    extends _$UserProfileModelCopyWithImpl<$Res>
    implements _$UserProfileModelCopyWith<$Res> {
  __$UserProfileModelCopyWithImpl(
      _UserProfileModel _value, $Res Function(_UserProfileModel) _then)
      : super(_value, (v) => _then(v as _UserProfileModel));

  @override
  _UserProfileModel get _value => super._value as _UserProfileModel;

  @override
  $Res call({
    Object? sub = freezed,
    Object? email = freezed,
    Object? mobile_number = freezed,
    Object? first_name = freezed,
    Object? last_name = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_UserProfileModel(
      sub: sub == freezed
          ? _value.sub
          : sub // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile_number: mobile_number == freezed
          ? _value.mobile_number
          : mobile_number // ignore: cast_nullable_to_non_nullable
              as String?,
      first_name: first_name == freezed
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String?,
      last_name: last_name == freezed
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_UserProfileModel implements _UserProfileModel {
  const _$_UserProfileModel(
      {this.sub,
      this.email,
      this.mobile_number,
      this.first_name,
      this.last_name,
      this.avatar});

  factory _$_UserProfileModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserProfileModelFromJson(json);

  @override
  final String? sub;
  @override
  final String? email;
  @override
  final String? mobile_number;
  @override
  final String? first_name;
  @override
  final String? last_name;
  @override
  final String? avatar;

  @override
  String toString() {
    return 'UserProfileModel(sub: $sub, email: $email, mobile_number: $mobile_number, first_name: $first_name, last_name: $last_name, avatar: $avatar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserProfileModel &&
            const DeepCollectionEquality().equals(other.sub, sub) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality()
                .equals(other.mobile_number, mobile_number) &&
            const DeepCollectionEquality()
                .equals(other.first_name, first_name) &&
            const DeepCollectionEquality().equals(other.last_name, last_name) &&
            const DeepCollectionEquality().equals(other.avatar, avatar));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sub),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(mobile_number),
      const DeepCollectionEquality().hash(first_name),
      const DeepCollectionEquality().hash(last_name),
      const DeepCollectionEquality().hash(avatar));

  @JsonKey(ignore: true)
  @override
  _$UserProfileModelCopyWith<_UserProfileModel> get copyWith =>
      __$UserProfileModelCopyWithImpl<_UserProfileModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserProfileModelToJson(this);
  }
}

abstract class _UserProfileModel implements UserProfileModel {
  const factory _UserProfileModel(
      {String? sub,
      String? email,
      String? mobile_number,
      String? first_name,
      String? last_name,
      String? avatar}) = _$_UserProfileModel;

  factory _UserProfileModel.fromJson(Map<String, dynamic> json) =
      _$_UserProfileModel.fromJson;

  @override
  String? get sub;
  @override
  String? get email;
  @override
  String? get mobile_number;
  @override
  String? get first_name;
  @override
  String? get last_name;
  @override
  String? get avatar;
  @override
  @JsonKey(ignore: true)
  _$UserProfileModelCopyWith<_UserProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}
