import 'package:freezed_annotation/freezed_annotation.dart';

part 'paging_info.freezed.dart';
part 'paging_info.g.dart';

@freezed
class PagingInfo with _$PagingInfo {
  const factory PagingInfo({
    PagingInfoClass? pagingInfo,
  }) = _PagingInfo;

  factory PagingInfo.fromJson(Map<String, dynamic> json) =>
      _$PagingInfoFromJson(json);
}

@freezed
class PagingInfoClass with _$PagingInfoClass {
  const factory PagingInfoClass({
    int? totalItems,
    int? pageSize,
    int? pageNumber,
  }) = _PagingInfoClass;

  factory PagingInfoClass.fromJson(Map<String, dynamic> json) =>
      _$PagingInfoClassFromJson(json);
}
