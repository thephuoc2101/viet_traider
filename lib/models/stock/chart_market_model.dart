import 'package:freezed_annotation/freezed_annotation.dart';

part 'chart_market_model.freezed.dart';

part 'chart_market_model.g.dart';

@freezed
class ChartMarketModel with _$ChartMarketModel {
  const factory ChartMarketModel(
      {String? marketCode,
      num? openIndex,
      List<ChartMarketDataModel>? data}) = _ChartMarketModel;
  factory ChartMarketModel.fromJson(Map<String, dynamic> json) =>
      _$ChartMarketModelFromJson(json);
}

@freezed
class ChartMarketDataModel with _$ChartMarketDataModel {
  const factory ChartMarketDataModel({
    String? time,
    num? oIndex,
    num? cIndex,
    double? value,
  }) = _ChartMarketDataModel;

  factory ChartMarketDataModel.fromJson(Map<String, dynamic> json) =>
      _$ChartMarketDataModelFromJson(json);
}
