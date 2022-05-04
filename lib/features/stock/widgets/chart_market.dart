import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viet_traider/bloc/bloc.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

import '../../../models/model.dart';

class ChartMarket extends StatefulWidget {
  final List<ChartMarketDataModel> data;

  const ChartMarket({Key? key, required this.data}) : super(key: key);

  @override
  _ChartMarketState createState() => _ChartMarketState();
}

class _ChartMarketState extends State<ChartMarket> {
  late List<ChartMarketDataModel> _dataChart;
  List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];

  bool showAvg = false;

  @override
  void initState() {
    _dataChart = widget.data;
    super.initState();
  }

  @override
  void didUpdateWidget(covariant ChartMarket oldWidget) {
    _dataChart = widget.data;
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.0,
      width: double.infinity,
      child: _dataChart.isNotEmpty
          ? _buildChart(_dataChart)
          : const SizedBox.shrink(),
    );
  }

  Widget _buildChart(List<ChartMarketDataModel> data) {
    double oIndex = (data[data.length - 1].oIndex ?? 0).toDouble();
    final inData = List<double>.generate(
        data.length, (index) => (data[index].cIndex ?? 0).toDouble());
    return SfSparkLineChart(
      width: 1,
      axisLineWidth: 0.5,
      axisLineColor: Colors.grey,
      color: Colors.red,
      axisCrossesAt: oIndex,
      data: inData,
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xff68737d),
      fontWeight: FontWeight.bold,
      fontSize: 16,
    );
    Widget text;
    switch (value.toInt()) {
      case 2:
        text = const Text('MAR', style: style);
        break;
      case 5:
        text = const Text('JUN', style: style);
        break;
      case 8:
        text = const Text('SEP', style: style);
        break;
      default:
        text = const Text('', style: style);
        break;
    }

    return Padding(child: text, padding: const EdgeInsets.only(top: 8.0));
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xff67727d),
      fontWeight: FontWeight.bold,
      fontSize: 15,
    );
    String text;
    switch (value.toInt()) {
      case 1:
        text = '10K';
        break;
      case 3:
        text = '30k';
        break;
      case 5:
        text = '50k';
        break;
      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.left);
  }

  LineChartData mainData(List<ChartMarketDataModel> data) {
    // double oIndex = (data[data.length - 1].oIndex ?? 0).toDouble();
    // final flSpotList = List<FlSpot>.generate(
    //     data.length,
    //         (int index) =>
    //         FlSpot(index.toDouble(), (data[index].cIndex ?? 0).toDouble()));
    return LineChartData(
      gridData: FlGridData(
        show: false,
        drawVerticalLine: true,
        horizontalInterval: 1,
        verticalInterval: 1,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: false,
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            interval: 1,
            getTitlesWidget: bottomTitleWidgets,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 1,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 42,
          ),
        ),
      ),
      borderData: FlBorderData(
          show: false,
          border: Border.all(color: const Color(0xff37434d), width: 1)),
      minX: 0,
      maxX: 10,
      minY: 0,
      maxY: 10,
      lineBarsData: [
        LineChartBarData(
          spots: [
            FlSpot(0, 1),
            FlSpot(1, 2),
            FlSpot(2, 3),
            FlSpot(3, 4),
            FlSpot(4, 5),
          ],
          isCurved: true,
          gradient: LinearGradient(
            colors: gradientColors,
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          barWidth: 5,
          isStrokeCapRound: false,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: gradientColors
                  .map((color) => color.withOpacity(0.3))
                  .toList(),
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
        ),
      ],
    );
  }
}
