import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Yaxis extends StatelessWidget {
  final List<double> taskStatsPercents;
  final TitleMeta meta;

  const Yaxis({
    Key? key,
    required this.taskStatsPercents,
    required this.meta,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String text = "";
    double value = 0.0;
    for (double data in taskStatsPercents) {
      value = data;

      if (value == 0.75) {
        text = "75";
      } else if (value == 0.90) {
        text = "90";
      } else if (value == 0.73) {
        text = "73";
      } else if (value == 0.30) {
        text = "30";
      } else {}
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 1.0,
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 12,
        ),
      ),
    );
  }
}
