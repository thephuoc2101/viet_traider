import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/data.dart';
import '../../models/model.dart';


part 'market_state.freezed.dart';

@freezed
class MarketState with _$MarketState {
  const factory MarketState.loading() = MarketLoading;

  const factory MarketState.marketLogged({required List<MarketDataModel> data}) = MarketLogged;

  const factory MarketState.marketChartLogged({required ChartMarketModel? data}) = MarketChartLogged;

  const factory MarketState.error(
      { String? error, List<String>? errors, Object? data}) = MarketError;


}
