import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viet_traider/bloc/bloc.dart';

import '../stock.dart';

class StockView extends StatefulWidget {
  const StockView({Key? key}) : super(key: key);

  @override
  _StockViewState createState() => _StockViewState();
}

class _StockViewState extends State<StockView>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BlocBuilder<MarketCubit, MarketState>(builder: (context, state) {
              return state.maybeWhen(
                  marketLogged: (data) =>
                      SizedBox(height: 150.0, child: Exchanges(data: data)),
                  orElse: () => Container());
            }),

          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
