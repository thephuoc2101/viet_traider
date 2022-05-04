import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../stock.dart';
import '../../../share/share.dart';
import '../../../bloc/bloc.dart';

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: _buildSearchView(),
          ),
          const SizedBox(height: 16.0),
          BlocBuilder<MarketCubit, MarketState>(builder: (context, state) {
            return state.maybeWhen(
                marketLogged: (data) => Container(
                    height: 110.0.w,
                    padding: const EdgeInsets.only(left: 16.0,right: 16.0),
                    child: Exchanges(data: data)),
                orElse: () => Container());
          }),
        ],
      ),
    );
  }
  Widget _buildSearchView()=>TextFormField(
    keyboardType: TextInputType.text,
    decoration: InputDecoration(
        hintText: 'Search',
        isDense: true,
        contentPadding: const EdgeInsets.fromLTRB(15, 15, 10, 0),
        // control your hints text size
        hintStyle: const TextStyle(
            letterSpacing: 2,
            color: Color(0xff5B636A),
            fontWeight: FontWeight.bold),
        fillColor: const Color(0xffE0E4E9),
        filled: true,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide.none)),
  );
  @override
  bool get wantKeepAlive => true;
}
