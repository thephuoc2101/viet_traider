import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import '../../../models/model.dart';
import '../../data.dart';

part 'stock_rest_client.g.dart';

@RestApi()
abstract class StockRestClient {
  factory StockRestClient(Dio dio, {String baseUrl}) = _StockRestClient;

  @GET("getchartInmemData/{marketCode}")
  Future<ChartMarketModel> getChartData(@Path('marketCode') String marketCode);

  @GET("getlistindexdetail")
  Future<List<MarketDataModel>> getListIndexDetail();

  @MultiPart()
  @POST("uploadAttachment")
  Future uploadAttachment(@MultiPart() List<MultiPart> filePart);


}
