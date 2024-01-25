// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarGraph extends StatelessWidget {
  final List<String> taskStats;
  const BarGraph({
    Key? key,
    required this.taskStats,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.55,
      child: BarChart(
        BarChartData(maxY: 100.0, minY: 0.0),
        swapAnimationDuration: const Duration(milliseconds: 150),
        swapAnimationCurve: Curves.bounceOut,
      ),
    );
  }
}
