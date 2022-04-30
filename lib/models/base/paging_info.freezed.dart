// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'paging_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PagingInfo _$PagingInfoFromJson(Map<String, dynamic> json) {
  return _PagingInfo.fromJson(json);
}

/// @nodoc
class _$PagingInfoTearOff {
  const _$PagingInfoTearOff();

  _PagingInfo call({PagingInfoClass? pagingInfo}) {
    return _PagingInfo(
      pagingInfo: pagingInfo,
    );
  }

  PagingInfo fromJson(Map<String, Object?> json) {
    return PagingInfo.fromJson(json);
  }
}

/// @nodoc
const $PagingInfo = _$PagingInfoTearOff();

/// @nodoc
mixin _$PagingInfo {
  PagingInfoClass? get pagingInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PagingInfoCopyWith<PagingInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PagingInfoCopyWith<$Res> {
  factory $PagingInfoCopyWith(
          PagingInfo value, $Res Function(PagingInfo) then) =
      _$PagingInfoCopyWithImpl<$Res>;
  $Res call({PagingInfoClass? pagingInfo});

  $PagingInfoClassCopyWith<$Res>? get pagingInfo;
}

/// @nodoc
class _$PagingInfoCopyWithImpl<$Res> implements $PagingInfoCopyWith<$Res> {
  _$PagingInfoCopyWithImpl(this._value, this._then);

  final PagingInfo _value;
  // ignore: unused_field
  final $Res Function(PagingInfo) _then;

  @override
  $Res call({
    Object? pagingInfo = freezed,
  }) {
    return _then(_value.copyWith(
      pagingInfo: pagingInfo == freezed
          ? _value.pagingInfo
          : pagingInfo // ignore: cast_nullable_to_non_nullable
              as PagingInfoClass?,
    ));
  }

  @override
  $PagingInfoClassCopyWith<$Res>? get pagingInfo {
    if (_value.pagingInfo == null) {
      return null;
    }

    return $PagingInfoClassCopyWith<$Res>(_value.pagingInfo!, (value) {
      return _then(_value.copyWith(pagingInfo: value));
    });
  }
}

/// @nodoc
abstract class _$PagingInfoCopyWith<$Res> implements $PagingInfoCopyWith<$Res> {
  factory _$PagingInfoCopyWith(
          _PagingInfo value, $Res Function(_PagingInfo) then) =
      __$PagingInfoCopyWithImpl<$Res>;
  @override
  $Res call({PagingInfoClass? pagingInfo});

  @override
  $PagingInfoClassCopyWith<$Res>? get pagingInfo;
}

/// @nodoc
class __$PagingInfoCopyWithImpl<$Res> extends _$PagingInfoCopyWithImpl<$Res>
    implements _$PagingInfoCopyWith<$Res> {
  __$PagingInfoCopyWithImpl(
      _PagingInfo _value, $Res Function(_PagingInfo) _then)
      : super(_value, (v) => _then(v as _PagingInfo));

  @override
  _PagingInfo get _value => super._value as _PagingInfo;

  @override
  $Res call({
    Object? pagingInfo = freezed,
  }) {
    return _then(_PagingInfo(
      pagingInfo: pagingInfo == freezed
          ? _value.pagingInfo
          : pagingInfo // ignore: cast_nullable_to_non_nullable
              as PagingInfoClass?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PagingInfo implements _PagingInfo {
  const _$_PagingInfo({this.pagingInfo});

  factory _$_PagingInfo.fromJson(Map<String, dynamic> json) =>
      _$$_PagingInfoFromJson(json);

  @override
  final PagingInfoClass? pagingInfo;

  @override
  String toString() {
    return 'PagingInfo(pagingInfo: $pagingInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PagingInfo &&
            const DeepCollectionEquality()
                .equals(other.pagingInfo, pagingInfo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pagingInfo));

  @JsonKey(ignore: true)
  @override
  _$PagingInfoCopyWith<_PagingInfo> get copyWith =>
      __$PagingInfoCopyWithImpl<_PagingInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PagingInfoToJson(this);
  }
}

abstract class _PagingInfo implements PagingInfo {
  const factory _PagingInfo({PagingInfoClass? pagingInfo}) = _$_PagingInfo;

  factory _PagingInfo.fromJson(Map<String, dynamic> json) =
      _$_PagingInfo.fromJson;

  @override
  PagingInfoClass? get pagingInfo;
  @override
  @JsonKey(ignore: true)
  _$PagingInfoCopyWith<_PagingInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

PagingInfoClass _$PagingInfoClassFromJson(Map<String, dynamic> json) {
  return _PagingInfoClass.fromJson(json);
}

/// @nodoc
class _$PagingInfoClassTearOff {
  const _$PagingInfoClassTearOff();

  _PagingInfoClass call({int? totalItems, int? pageSize, int? pageNumber}) {
    return _PagingInfoClass(
      totalItems: totalItems,
      pageSize: pageSize,
      pageNumber: pageNumber,
    );
  }

  PagingInfoClass fromJson(Map<String, Object?> json) {
    return PagingInfoClass.fromJson(json);
  }
}

/// @nodoc
const $PagingInfoClass = _$PagingInfoClassTearOff();

/// @nodoc
mixin _$PagingInfoClass {
  int? get totalItems => throw _privateConstructorUsedError;
  int? get pageSize => throw _privateConstructorUsedError;
  int? get pageNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PagingInfoClassCopyWith<PagingInfoClass> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PagingInfoClassCopyWith<$Res> {
  factory $PagingInfoClassCopyWith(
          PagingInfoClass value, $Res Function(PagingInfoClass) then) =
      _$PagingInfoClassCopyWithImpl<$Res>;
  $Res call({int? totalItems, int? pageSize, int? pageNumber});
}

/// @nodoc
class _$PagingInfoClassCopyWithImpl<$Res>
    implements $PagingInfoClassCopyWith<$Res> {
  _$PagingInfoClassCopyWithImpl(this._value, this._then);

  final PagingInfoClass _value;
  // ignore: unused_field
  final $Res Function(PagingInfoClass) _then;

  @override
  $Res call({
    Object? totalItems = freezed,
    Object? pageSize = freezed,
    Object? pageNumber = freezed,
  }) {
    return _then(_value.copyWith(
      totalItems: totalItems == freezed
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int?,
      pageSize: pageSize == freezed
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      pageNumber: pageNumber == freezed
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$PagingInfoClassCopyWith<$Res>
    implements $PagingInfoClassCopyWith<$Res> {
  factory _$PagingInfoClassCopyWith(
          _PagingInfoClass value, $Res Function(_PagingInfoClass) then) =
      __$PagingInfoClassCopyWithImpl<$Res>;
  @override
  $Res call({int? totalItems, int? pageSize, int? pageNumber});
}

/// @nodoc
class __$PagingInfoClassCopyWithImpl<$Res>
    extends _$PagingInfoClassCopyWithImpl<$Res>
    implements _$PagingInfoClassCopyWith<$Res> {
  __$PagingInfoClassCopyWithImpl(
      _PagingInfoClass _value, $Res Function(_PagingInfoClass) _then)
      : super(_value, (v) => _then(v as _PagingInfoClass));

  @override
  _PagingInfoClass get _value => super._value as _PagingInfoClass;

  @override
  $Res call({
    Object? totalItems = freezed,
    Object? pageSize = freezed,
    Object? pageNumber = freezed,
  }) {
    return _then(_PagingInfoClass(
      totalItems: totalItems == freezed
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int?,
      pageSize: pageSize == freezed
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      pageNumber: pageNumber == freezed
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PagingInfoClass implements _PagingInfoClass {
  const _$_PagingInfoClass({this.totalItems, this.pageSize, this.pageNumber});

  factory _$_PagingInfoClass.fromJson(Map<String, dynamic> json) =>
      _$$_PagingInfoClassFromJson(json);

  @override
  final int? totalItems;
  @override
  final int? pageSize;
  @override
  final int? pageNumber;

  @override
  String toString() {
    return 'PagingInfoClass(totalItems: $totalItems, pageSize: $pageSize, pageNumber: $pageNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PagingInfoClass &&
            const DeepCollectionEquality()
                .equals(other.totalItems, totalItems) &&
            const DeepCollectionEquality().equals(other.pageSize, pageSize) &&
            const DeepCollectionEquality()
                .equals(other.pageNumber, pageNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(totalItems),
      const DeepCollectionEquality().hash(pageSize),
      const DeepCollectionEquality().hash(pageNumber));

  @JsonKey(ignore: true)
  @override
  _$PagingInfoClassCopyWith<_PagingInfoClass> get copyWith =>
      __$PagingInfoClassCopyWithImpl<_PagingInfoClass>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PagingInfoClassToJson(this);
  }
}

abstract class _PagingInfoClass implements PagingInfoClass {
  const factory _PagingInfoClass(
      {int? totalItems, int? pageSize, int? pageNumber}) = _$_PagingInfoClass;

  factory _PagingInfoClass.fromJson(Map<String, dynamic> json) =
      _$_PagingInfoClass.fromJson;

  @override
  int? get totalItems;
  @override
  int? get pageSize;
  @override
  int? get pageNumber;
  @override
  @JsonKey(ignore: true)
  _$PagingInfoClassCopyWith<_PagingInfoClass> get copyWith =>
      throw _privateConstructorUsedError;
}
