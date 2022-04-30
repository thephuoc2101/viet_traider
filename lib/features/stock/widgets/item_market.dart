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
      return Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(width: 1.0, color: Colors.grey),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              cIndex.toString(),
              style:
                  const TextStyle(fontWeight: FontWeight.w500, fontSize: 17.0),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: ChartMarket(
                data: dataChart,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  type.name,
                  style: const TextStyle(
                      fontWeight: FontWeight.w500, fontSize: 14.0),
                ),
                Text(
                  '${_getMark(cIndex, oIndex)}$_percent',
                  style: const TextStyle(fontSize: 12.0),
                )
              ],
            )
          ],
        ),
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
}
