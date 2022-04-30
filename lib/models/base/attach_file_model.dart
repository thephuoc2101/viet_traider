import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'attach_file_model.freezed.dart';

part 'attach_file_model.g.dart';

@freezed
class AttachFileModel with _$AttachFileModel {
  const factory AttachFileModel({
    String? idGuid,
    String? fileType,
    String? fileName,
    String? filePath,
    int? fileSize,
  }) = _AttachFileModel;

  factory AttachFileModel.fromJson(Map<String, dynamic> json) =>
      _$AttachFileModelFromJson(json);
}
