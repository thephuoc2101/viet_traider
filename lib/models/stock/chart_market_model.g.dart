// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chart_market_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChartMarketModel _$$_ChartMarketModelFromJson(Map<String, dynamic> json) =>
    _$_ChartMarketModel(
      marketCode: json['marketCode'] as String?,
      openIndex: json['openIndex'] as num?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ChartMarketDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ChartMarketModelToJson(_$_ChartMarketModel instance) =>
    <String, dynamic>{
      'marketCode': instance.marketCode,
      'openIndex': instance.openIndex,
      'data': instance.data,
    };

_$_ChartMarketDataModel _$$_ChartMarketDataModelFromJson(
        Map<String, dynamic> json) =>
    _$_ChartMarketDataModel(
      time: json['time'] as String?,
      oIndex: json['oIndex'] as num?,
      cIndex: json['cIndex'] as num?,
      value: (json['value'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_ChartMarketDataModelToJson(
        _$_ChartMarketDataModel instance) =>
    <String, dynamic>{
      'time': instance.time,
      'oIndex': instance.oIndex,
      'cIndex': instance.cIndex,
      'value': instance.value,
    };
