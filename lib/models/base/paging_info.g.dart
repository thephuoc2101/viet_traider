// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paging_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PagingInfo _$$_PagingInfoFromJson(Map<String, dynamic> json) =>
    _$_PagingInfo(
      pagingInfo: json['pagingInfo'] == null
          ? null
          : PagingInfoClass.fromJson(
              json['pagingInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PagingInfoToJson(_$_PagingInfo instance) =>
    <String, dynamic>{
      'pagingInfo': instance.pagingInfo,
    };

_$_PagingInfoClass _$$_PagingInfoClassFromJson(Map<String, dynamic> json) =>
    _$_PagingInfoClass(
      totalItems: json['totalItems'] as int?,
      pageSize: json['pageSize'] as int?,
      pageNumber: json['pageNumber'] as int?,
    );

Map<String, dynamic> _$$_PagingInfoClassToJson(_$_PagingInfoClass instance) =>
    <String, dynamic>{
      'totalItems': instance.totalItems,
      'pageSize': instance.pageSize,
      'pageNumber': instance.pageNumber,
    };
