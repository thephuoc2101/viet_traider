// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'logout_user_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LogoutUserRequest _$LogoutUserRequestFromJson(Map<String, dynamic> json) {
  return _LogoutUserRequest.fromJson(json);
}

/// @nodoc
class _$LogoutUserRequestTearOff {
  const _$LogoutUserRequestTearOff();

  _LogoutUserRequest call(
      {List<String>? listOfSessionCode, bool? isCurrentUserLogout}) {
    return _LogoutUserRequest(
      listOfSessionCode: listOfSessionCode,
      isCurrentUserLogout: isCurrentUserLogout,
    );
  }

  LogoutUserRequest fromJson(Map<String, Object?> json) {
    return LogoutUserRequest.fromJson(json);
  }
}

/// @nodoc
const $LogoutUserRequest = _$LogoutUserRequestTearOff();

/// @nodoc
mixin _$LogoutUserRequest {
  List<String>? get listOfSessionCode => throw _privateConstructorUsedError;
  bool? get isCurrentUserLogout => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LogoutUserRequestCopyWith<LogoutUserRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogoutUserRequestCopyWith<$Res> {
  factory $LogoutUserRequestCopyWith(
          LogoutUserRequest value, $Res Function(LogoutUserRequest) then) =
      _$LogoutUserRequestCopyWithImpl<$Res>;
  $Res call({List<String>? listOfSessionCode, bool? isCurrentUserLogout});
}

/// @nodoc
class _$LogoutUserRequestCopyWithImpl<$Res>
    implements $LogoutUserRequestCopyWith<$Res> {
  _$LogoutUserRequestCopyWithImpl(this._value, this._then);

  final LogoutUserRequest _value;
  // ignore: unused_field
  final $Res Function(LogoutUserRequest) _then;

  @override
  $Res call({
    Object? listOfSessionCode = freezed,
    Object? isCurrentUserLogout = freezed,
  }) {
    return _then(_value.copyWith(
      listOfSessionCode: listOfSessionCode == freezed
          ? _value.listOfSessionCode
          : listOfSessionCode // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isCurrentUserLogout: isCurrentUserLogout == freezed
          ? _value.isCurrentUserLogout
          : isCurrentUserLogout // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$LogoutUserRequestCopyWith<$Res>
    implements $LogoutUserRequestCopyWith<$Res> {
  factory _$LogoutUserRequestCopyWith(
          _LogoutUserRequest value, $Res Function(_LogoutUserRequest) then) =
      __$LogoutUserRequestCopyWithImpl<$Res>;
  @override
  $Res call({List<String>? listOfSessionCode, bool? isCurrentUserLogout});
}

/// @nodoc
class __$LogoutUserRequestCopyWithImpl<$Res>
    extends _$LogoutUserRequestCopyWithImpl<$Res>
    implements _$LogoutUserRequestCopyWith<$Res> {
  __$LogoutUserRequestCopyWithImpl(
      _LogoutUserRequest _value, $Res Function(_LogoutUserRequest) _then)
      : super(_value, (v) => _then(v as _LogoutUserRequest));

  @override
  _LogoutUserRequest get _value => super._value as _LogoutUserRequest;

  @override
  $Res call({
    Object? listOfSessionCode = freezed,
    Object? isCurrentUserLogout = freezed,
  }) {
    return _then(_LogoutUserRequest(
      listOfSessionCode: listOfSessionCode == freezed
          ? _value.listOfSessionCode
          : listOfSessionCode // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isCurrentUserLogout: isCurrentUserLogout == freezed
          ? _value.isCurrentUserLogout
          : isCurrentUserLogout // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LogoutUserRequest implements _LogoutUserRequest {
  const _$_LogoutUserRequest(
      {this.listOfSessionCode, this.isCurrentUserLogout});

  factory _$_LogoutUserRequest.fromJson(Map<String, dynamic> json) =>
      _$$_LogoutUserRequestFromJson(json);

  @override
  final List<String>? listOfSessionCode;
  @override
  final bool? isCurrentUserLogout;

  @override
  String toString() {
    return 'LogoutUserRequest(listOfSessionCode: $listOfSessionCode, isCurrentUserLogout: $isCurrentUserLogout)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LogoutUserRequest &&
            const DeepCollectionEquality()
                .equals(other.listOfSessionCode, listOfSessionCode) &&
            const DeepCollectionEquality()
                .equals(other.isCurrentUserLogout, isCurrentUserLogout));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(listOfSessionCode),
      const DeepCollectionEquality().hash(isCurrentUserLogout));

  @JsonKey(ignore: true)
  @override
  _$LogoutUserRequestCopyWith<_LogoutUserRequest> get copyWith =>
      __$LogoutUserRequestCopyWithImpl<_LogoutUserRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LogoutUserRequestToJson(this);
  }
}

abstract class _LogoutUserRequest implements LogoutUserRequest {
  const factory _LogoutUserRequest(
      {List<String>? listOfSessionCode,
      bool? isCurrentUserLogout}) = _$_LogoutUserRequest;

  factory _LogoutUserRequest.fromJson(Map<String, dynamic> json) =
      _$_LogoutUserRequest.fromJson;

  @override
  List<String>? get listOfSessionCode;
  @override
  bool? get isCurrentUserLogout;
  @override
  @JsonKey(ignore: true)
  _$LogoutUserRequestCopyWith<_LogoutUserRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
