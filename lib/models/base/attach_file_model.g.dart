// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attach_file_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AttachFileModel _$$_AttachFileModelFromJson(Map<String, dynamic> json) =>
    _$_AttachFileModel(
      idGuid: json['idGuid'] as String?,
      fileType: json['fileType'] as String?,
      fileName: json['fileName'] as String?,
      filePath: json['filePath'] as String?,
      fileSize: json['fileSize'] as int?,
    );

Map<String, dynamic> _$$_AttachFileModelToJson(_$_AttachFileModel instance) =>
    <String, dynamic>{
      'idGuid': instance.idGuid,
      'fileType': instance.fileType,
      'fileName': instance.fileName,
      'filePath': instance.filePath,
      'fileSize': instance.fileSize,
    };
