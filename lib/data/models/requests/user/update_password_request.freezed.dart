// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'update_password_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdatePasswordRequest _$UpdatePasswordRequestFromJson(
    Map<String, dynamic> json) {
  return _UpdatePasswordRequest.fromJson(json);
}

/// @nodoc
class _$UpdatePasswordRequestTearOff {
  const _$UpdatePasswordRequestTearOff();

  _UpdatePasswordRequest call(
      {String? id, String? currentPassword, String? newPassword}) {
    return _UpdatePasswordRequest(
      id: id,
      currentPassword: currentPassword,
      newPassword: newPassword,
    );
  }

  UpdatePasswordRequest fromJson(Map<String, Object?> json) {
    return UpdatePasswordRequest.fromJson(json);
  }
}

/// @nodoc
const $UpdatePasswordRequest = _$UpdatePasswordRequestTearOff();

/// @nodoc
mixin _$UpdatePasswordRequest {
  String? get id => throw _privateConstructorUsedError;
  String? get currentPassword => throw _privateConstructorUsedError;
  String? get newPassword => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdatePasswordRequestCopyWith<UpdatePasswordRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdatePasswordRequestCopyWith<$Res> {
  factory $UpdatePasswordRequestCopyWith(UpdatePasswordRequest value,
          $Res Function(UpdatePasswordRequest) then) =
      _$UpdatePasswordRequestCopyWithImpl<$Res>;
  $Res call({String? id, String? currentPassword, String? newPassword});
}

/// @nodoc
class _$UpdatePasswordRequestCopyWithImpl<$Res>
    implements $UpdatePasswordRequestCopyWith<$Res> {
  _$UpdatePasswordRequestCopyWithImpl(this._value, this._then);

  final UpdatePasswordRequest _value;
  // ignore: unused_field
  final $Res Function(UpdatePasswordRequest) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? currentPassword = freezed,
    Object? newPassword = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      currentPassword: currentPassword == freezed
          ? _value.currentPassword
          : currentPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      newPassword: newPassword == freezed
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$UpdatePasswordRequestCopyWith<$Res>
    implements $UpdatePasswordRequestCopyWith<$Res> {
  factory _$UpdatePasswordRequestCopyWith(_UpdatePasswordRequest value,
          $Res Function(_UpdatePasswordRequest) then) =
      __$UpdatePasswordRequestCopyWithImpl<$Res>;
  @override
  $Res call({String? id, String? currentPassword, String? newPassword});
}

/// @nodoc
class __$UpdatePasswordRequestCopyWithImpl<$Res>
    extends _$UpdatePasswordRequestCopyWithImpl<$Res>
    implements _$UpdatePasswordRequestCopyWith<$Res> {
  __$UpdatePasswordRequestCopyWithImpl(_UpdatePasswordRequest _value,
      $Res Function(_UpdatePasswordRequest) _then)
      : super(_value, (v) => _then(v as _UpdatePasswordRequest));

  @override
  _UpdatePasswordRequest get _value => super._value as _UpdatePasswordRequest;

  @override
  $Res call({
    Object? id = freezed,
    Object? currentPassword = freezed,
    Object? newPassword = freezed,
  }) {
    return _then(_UpdatePasswordRequest(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      currentPassword: currentPassword == freezed
          ? _value.currentPassword
          : currentPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      newPassword: newPassword == freezed
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdatePasswordRequest implements _UpdatePasswordRequest {
  const _$_UpdatePasswordRequest(
      {this.id, this.currentPassword, this.newPassword});

  factory _$_UpdatePasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$$_UpdatePasswordRequestFromJson(json);

  @override
  final String? id;
  @override
  final String? currentPassword;
  @override
  final String? newPassword;

  @override
  String toString() {
    return 'UpdatePasswordRequest(id: $id, currentPassword: $currentPassword, newPassword: $newPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdatePasswordRequest &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.currentPassword, currentPassword) &&
            const DeepCollectionEquality()
                .equals(other.newPassword, newPassword));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(currentPassword),
      const DeepCollectionEquality().hash(newPassword));

  @JsonKey(ignore: true)
  @override
  _$UpdatePasswordRequestCopyWith<_UpdatePasswordRequest> get copyWith =>
      __$UpdatePasswordRequestCopyWithImpl<_UpdatePasswordRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdatePasswordRequestToJson(this);
  }
}

abstract class _UpdatePasswordRequest implements UpdatePasswordRequest {
  const factory _UpdatePasswordRequest(
      {String? id,
      String? currentPassword,
      String? newPassword}) = _$_UpdatePasswordRequest;

  factory _UpdatePasswordRequest.fromJson(Map<String, dynamic> json) =
      _$_UpdatePasswordRequest.fromJson;

  @override
  String? get id;
  @override
  String? get currentPassword;
  @override
  String? get newPassword;
  @override
  @JsonKey(ignore: true)
  _$UpdatePasswordRequestCopyWith<_UpdatePasswordRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
