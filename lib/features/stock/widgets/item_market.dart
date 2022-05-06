import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../bloc/bloc.dart';
import '../../../features/feature.dart';
import '../../../models/model.dart';
import '../../../share/share.dart';

class ItemMarket extends StatefulWidget {
  final MarketDataModel item;

  const ItemMarket({required this.item, Key? key}) : super(key: key);

  @override
  State<ItemMarket> createState() => _ItemMarketState();
}

class _ItemMarketState extends State<ItemMarket> {
  late MakerType type;
  Timer? timer;

  @override
  void initState() {
    type = MakerTypeEx.fromCode(widget.item.mc ?? '') ?? MakerType.vnIndex;

    timer = Timer.periodic(
        const Duration(seconds: 4),
        (Timer t) =>
            BlocProvider.of<MarketCubit>(context).onLoadChartData(type));
    super.initState();
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String? _percent = widget.item.ot?.split('|')[1].toString();
    num oIndex = widget.item.oIndex ?? 0;
    num cIndex = widget.item.cIndex ?? 0;
    List<ChartMarketDataModel> dataChart = [];
    return BlocBuilder<MarketCubit, MarketState>(builder: (context, state) {
      state.maybeWhen(
          marketChartLogged: (da) {
            dataChart = da?.data ?? [];
            if (dataChart.isNotEmpty) {
              oIndex = dataChart[dataChart.length - 1].oIndex ?? 0;
              cIndex = dataChart[dataChart.length - 1].cIndex ?? 0;
              _percent =
                  (100 - (oIndex * 100 / cIndex)).toString().toCurrency() + "%";
            }
          },
          orElse: () {});
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: ChartMarket(
              data: dataChart,
            ),
          ),
          const SizedBox(height: 6.0),
          Text(
            type.name,
            style:
                const TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
          ),
          const SizedBox(height: 3.0),
          Text(
            cIndex.toString(),
            style:
                 TextStyle(fontWeight: FontWeight.w700, fontSize: 15.0,color: _getColor(cIndex,oIndex)),
          ),
          const SizedBox(height: 3.0),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              color: _getColor(cIndex,oIndex),
            ),
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
            child: Text(
              '${_getMark(cIndex, oIndex)}$_percent',
              style: const TextStyle(fontSize: 13.0, color: Colors.white),
            ),
          )
        ],
      );
    });
  }

  String _getMark(num cIndex, num oIndex) {
    if ((cIndex) > (oIndex)) {
      return '+';
    } else if ((cIndex) < (oIndex)) {
      return '-';
    } else {
      return '';
    }
  }
  Color _getColor(num cIndex, num oIndex){
    if ((cIndex) > (oIndex)) {
      return Colors.green;
    } else if ((cIndex) < (oIndex)) {
      return Colors.red;
    } else {
      return Colors.amber;
    }
  }
}
