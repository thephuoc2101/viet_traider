import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viet_traider/widgets/navigator.dart';
import 'package:viet_traider/widgets/webview_screen.dart';

import '../../../bloc/bloc.dart';
import '../../../data/data.dart';
import '../../../models/model.dart';
import '../../../share/share.dart';
import '../../feature.dart';

class Exchanges extends StatelessWidget {
  final List<MarketDataModel> data;

  const Exchanges({required this.data, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final item = data[index];
          return BlocProvider(
            create: (_) =>
                MarketCubit(RepositoryProvider.of<StockRepository>(context)),
            child: SizedBox(
              width: 120.0,
              child: GestureDetector(
                onTap: () => pushNamed(AcadChartScreen.route, arguments: {
                  'sym':
                      (MakerTypeEx.fromCode(item.mc ?? '') ?? MakerType.vnIndex).sym.toUpperCase()
                }),
                child: ItemMarket(
                  item: item,
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(width: 10.0),
        itemCount: data.length);
  }
}
