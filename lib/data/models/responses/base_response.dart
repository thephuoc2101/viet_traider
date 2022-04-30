import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class BaseModelResponse<T> {
  final bool? isOk;
  final T? result;

  const BaseModelResponse({
    this.isOk,
    this.result,
  });

  factory BaseModelResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) {
    return _$BaseModelResponseFromJson<T>(json, fromJsonT);
  }

  Map<String, dynamic> toJson(
    Map<String, dynamic> Function(T value) toJsonT,
  ) {
    return _$BaseModelResponseToJson<T>(this, toJsonT);
  }
}

@JsonSerializable(genericArgumentFactories: true)
class BaseResponse<T> {
  final bool? isOk;
  final List<T>? result;

  const BaseResponse({
    this.isOk,
    this.result,
  });

  factory BaseResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) {
    return _$BaseResponseFromJson<T>(json, fromJsonT);
  }

  Map<String, dynamic> toJson(
    Map<String, dynamic> Function(T value) toJsonT,
  ) {
    return _$BaseResponseToJson<T>(this, toJsonT);
  }
}

@JsonSerializable(genericArgumentFactories: true)
class LazyDataModel<T> {
  final PagingInfo? pagingInfo;
  final List<T>? items;

  const LazyDataModel({
    this.pagingInfo,
    this.items,
  });

  factory LazyDataModel.fromJson(
      Map<String, dynamic> json,
      T Function(Object? json) fromJsonT,
      ) {
    return _$LazyDataModelFromJson<T>(json, fromJsonT);
  }

  Map<String, dynamic> toJson(
      Map<String, dynamic> Function(T value) toJsonT,
      ) {
    return _$LazyDataModelToJson<T>(this, toJsonT);
  }
}

@JsonSerializable()
class PagingInfo  {
  int? totalItems;
  int? pageSize;
  int? pageNumber;

  PagingInfo({this.totalItems, this.pageSize, this.pageNumber});

  factory PagingInfo.fromJson(Map<String, dynamic> json) => _$PagingInfoFromJson(json);
  Map<String, dynamic> toJson() => _$PagingInfoToJson(this);
}

