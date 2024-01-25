// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:spech_interview_task/bar%20graph/bar_graph_data.dart';

class BarGraph extends StatelessWidget {
  final List<String> taskStats;
  const BarGraph({
    Key? key,
    required this.taskStats,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BarGraphData data = BarGraphData(
      taskStatsJan: taskStats[0],
      taskStatsFeb: taskStats[1],
      taskStatsMarch: taskStats[2],
      taskStatsApril: taskStats[3],
    );
    data.initializeBarData(taskStats);
    print(taskStats);
    // print(BarChartRodData(toY: double.parse(taskStats[0])));
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.55,
      child: BarChart(
        BarChartData(
          maxY: 100.0,
          minY: 0.0,
          // barGroups: data.barData
          //     .map((data) => BarChartGroupData(
          //         x: int.parse(data.months),
          //         barRods:
          //             BarChartRodData(toY: double.parse(data.taskStats[0]))))
          //     .toList(),
        ),
        swapAnimationDuration: const Duration(milliseconds: 150),
        swapAnimationCurve: Curves.bounceOut,
      ),
    );
  }
}
