// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseModelResponse<T> _$BaseModelResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    BaseModelResponse<T>(
      isOk: json['isOk'] as bool?,
      result: _$nullableGenericFromJson(json['result'], fromJsonT),
    );

Map<String, dynamic> _$BaseModelResponseToJson<T>(
  BaseModelResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'isOk': instance.isOk,
      'result': _$nullableGenericToJson(instance.result, toJsonT),
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);

BaseResponse<T> _$BaseResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    BaseResponse<T>(
      isOk: json['isOk'] as bool?,
      result: (json['result'] as List<dynamic>?)?.map(fromJsonT).toList(),
    );

Map<String, dynamic> _$BaseResponseToJson<T>(
  BaseResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'isOk': instance.isOk,
      'result': instance.result?.map(toJsonT).toList(),
    };

LazyDataModel<T> _$LazyDataModelFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    LazyDataModel<T>(
      pagingInfo: json['pagingInfo'] == null
          ? null
          : PagingInfo.fromJson(json['pagingInfo'] as Map<String, dynamic>),
      items: (json['items'] as List<dynamic>?)?.map(fromJsonT).toList(),
    );

Map<String, dynamic> _$LazyDataModelToJson<T>(
  LazyDataModel<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'pagingInfo': instance.pagingInfo,
      'items': instance.items?.map(toJsonT).toList(),
    };

PagingInfo _$PagingInfoFromJson(Map<String, dynamic> json) => PagingInfo(
      totalItems: json['totalItems'] as int?,
      pageSize: json['pageSize'] as int?,
      pageNumber: json['pageNumber'] as int?,
    );

Map<String, dynamic> _$PagingInfoToJson(PagingInfo instance) =>
    <String, dynamic>{
      'totalItems': instance.totalItems,
      'pageSize': instance.pageSize,
      'pageNumber': instance.pageNumber,
    };
