import '../../models/model.dart';
import '../data.dart';

class StockRepository {
  final StockRestClient stockApi;

  StockRepository({
    required this.stockApi,
  });
  Future<ChartMarketModel> getChartData(String marketCode) async {
    return await stockApi.getChartData(marketCode);
  }
  Future<List<MarketDataModel>> getListIndexDetail() async {
    return await stockApi.getListIndexDetail();
  }

}
