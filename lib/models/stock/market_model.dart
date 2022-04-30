import 'package:freezed_annotation/freezed_annotation.dart';

part 'market_model.freezed.dart';

part 'market_model.g.dart';

@freezed
class MarketDataModel with _$MarketDataModel {
  const factory MarketDataModel({
    String? mc,
    num? cIndex,
    num? oIndex,
    String? ot,
  }) = _ChartMarketModel;

  factory MarketDataModel.fromJson(Map<String, dynamic> json) =>
      _$MarketDataModelFromJson(json);
}
