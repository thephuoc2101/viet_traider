import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../locale/locale.dart';
import '../../models/model.dart';
import '../../data/data.dart';
import '../../share/share.dart';
import 'bloc.dart';

class MarketCubit extends Cubit<MarketState> {
  final StockRepository repo;

  MarketCubit(this.repo) : super(const MarketLoading());

  void onLoadChartData(MakerType type) async {
    try {
      emit(const MarketLoading());
      final data = await repo.getChartData(type.code);
      emit(MarketChartLogged(data: data));
    } catch (err) {
      _handleError(err);
    }
  }

  void onLoadListIndexDetail() async {
    try {
      emit(const MarketLoading());
      final data = await repo.getListIndexDetail();
      emit(MarketLogged(data: data));
    } catch (err) {
      _handleError(err);
    }
  }

  void _handleError(Object err) {
    if (err is DioError) {
      emit(MarketError(

      ));
    } else {
      emit(const MarketError(error: UI.error_something_went_wrong));
    }
  }
}
