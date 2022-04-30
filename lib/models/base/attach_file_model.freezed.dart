// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'attach_file_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AttachFileModel _$AttachFileModelFromJson(Map<String, dynamic> json) {
  return _AttachFileModel.fromJson(json);
}

/// @nodoc
class _$AttachFileModelTearOff {
  const _$AttachFileModelTearOff();

  _AttachFileModel call(
      {String? idGuid,
      String? fileType,
      String? fileName,
      String? filePath,
      int? fileSize}) {
    return _AttachFileModel(
      idGuid: idGuid,
      fileType: fileType,
      fileName: fileName,
      filePath: filePath,
      fileSize: fileSize,
    );
  }

  AttachFileModel fromJson(Map<String, Object?> json) {
    return AttachFileModel.fromJson(json);
  }
}

/// @nodoc
const $AttachFileModel = _$AttachFileModelTearOff();

/// @nodoc
mixin _$AttachFileModel {
  String? get idGuid => throw _privateConstructorUsedError;
  String? get fileType => throw _privateConstructorUsedError;
  String? get fileName => throw _privateConstructorUsedError;
  String? get filePath => throw _privateConstructorUsedError;
  int? get fileSize => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttachFileModelCopyWith<AttachFileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttachFileModelCopyWith<$Res> {
  factory $AttachFileModelCopyWith(
          AttachFileModel value, $Res Function(AttachFileModel) then) =
      _$AttachFileModelCopyWithImpl<$Res>;
  $Res call(
      {String? idGuid,
      String? fileType,
      String? fileName,
      String? filePath,
      int? fileSize});
}

/// @nodoc
class _$AttachFileModelCopyWithImpl<$Res>
    implements $AttachFileModelCopyWith<$Res> {
  _$AttachFileModelCopyWithImpl(this._value, this._then);

  final AttachFileModel _value;
  // ignore: unused_field
  final $Res Function(AttachFileModel) _then;

  @override
  $Res call({
    Object? idGuid = freezed,
    Object? fileType = freezed,
    Object? fileName = freezed,
    Object? filePath = freezed,
    Object? fileSize = freezed,
  }) {
    return _then(_value.copyWith(
      idGuid: idGuid == freezed
          ? _value.idGuid
          : idGuid // ignore: cast_nullable_to_non_nullable
              as String?,
      fileType: fileType == freezed
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as String?,
      fileName: fileName == freezed
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      filePath: filePath == freezed
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String?,
      fileSize: fileSize == freezed
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$AttachFileModelCopyWith<$Res>
    implements $AttachFileModelCopyWith<$Res> {
  factory _$AttachFileModelCopyWith(
          _AttachFileModel value, $Res Function(_AttachFileModel) then) =
      __$AttachFileModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? idGuid,
      String? fileType,
      String? fileName,
      String? filePath,
      int? fileSize});
}

/// @nodoc
class __$AttachFileModelCopyWithImpl<$Res>
    extends _$AttachFileModelCopyWithImpl<$Res>
    implements _$AttachFileModelCopyWith<$Res> {
  __$AttachFileModelCopyWithImpl(
      _AttachFileModel _value, $Res Function(_AttachFileModel) _then)
      : super(_value, (v) => _then(v as _AttachFileModel));

  @override
  _AttachFileModel get _value => super._value as _AttachFileModel;

  @override
  $Res call({
    Object? idGuid = freezed,
    Object? fileType = freezed,
    Object? fileName = freezed,
    Object? filePath = freezed,
    Object? fileSize = freezed,
  }) {
    return _then(_AttachFileModel(
      idGuid: idGuid == freezed
          ? _value.idGuid
          : idGuid // ignore: cast_nullable_to_non_nullable
              as String?,
      fileType: fileType == freezed
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as String?,
      fileName: fileName == freezed
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      filePath: filePath == freezed
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String?,
      fileSize: fileSize == freezed
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AttachFileModel implements _AttachFileModel {
  const _$_AttachFileModel(
      {this.idGuid,
      this.fileType,
      this.fileName,
      this.filePath,
      this.fileSize});

  factory _$_AttachFileModel.fromJson(Map<String, dynamic> json) =>
      _$$_AttachFileModelFromJson(json);

  @override
  final String? idGuid;
  @override
  final String? fileType;
  @override
  final String? fileName;
  @override
  final String? filePath;
  @override
  final int? fileSize;

  @override
  String toString() {
    return 'AttachFileModel(idGuid: $idGuid, fileType: $fileType, fileName: $fileName, filePath: $filePath, fileSize: $fileSize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AttachFileModel &&
            const DeepCollectionEquality().equals(other.idGuid, idGuid) &&
            const DeepCollectionEquality().equals(other.fileType, fileType) &&
            const DeepCollectionEquality().equals(other.fileName, fileName) &&
            const DeepCollectionEquality().equals(other.filePath, filePath) &&
            const DeepCollectionEquality().equals(other.fileSize, fileSize));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(idGuid),
      const DeepCollectionEquality().hash(fileType),
      const DeepCollectionEquality().hash(fileName),
      const DeepCollectionEquality().hash(filePath),
      const DeepCollectionEquality().hash(fileSize));

  @JsonKey(ignore: true)
  @override
  _$AttachFileModelCopyWith<_AttachFileModel> get copyWith =>
      __$AttachFileModelCopyWithImpl<_AttachFileModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttachFileModelToJson(this);
  }
}

abstract class _AttachFileModel implements AttachFileModel {
  const factory _AttachFileModel(
      {String? idGuid,
      String? fileType,
      String? fileName,
      String? filePath,
      int? fileSize}) = _$_AttachFileModel;

  factory _AttachFileModel.fromJson(Map<String, dynamic> json) =
      _$_AttachFileModel.fromJson;

  @override
  String? get idGuid;
  @override
  String? get fileType;
  @override
  String? get fileName;
  @override
  String? get filePath;
  @override
  int? get fileSize;
  @override
  @JsonKey(ignore: true)
  _$AttachFileModelCopyWith<_AttachFileModel> get copyWith =>
      throw _privateConstructorUsedError;
}
