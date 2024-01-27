import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:spech_interview_task/bar%20graph/axix%20customizations/yaxis_customization.dart';
import 'package:spech_interview_task/bar%20graph/classes/bar_data.dart';

class BarGraph extends StatelessWidget {
  final List<double> taskStatsPercents;
  const BarGraph({
    Key? key,
    required this.taskStatsPercents,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BarData bardata = BarData(
      taskStatsJan: taskStatsPercents[0],
      taskStatsFeb: taskStatsPercents[1],
      taskStatsMar: taskStatsPercents[2],
      taskStatsApr: taskStatsPercents[3],
    );
    bardata.initialiazeBarData();
    return BarChart(
      BarChartData(
        titlesData: FlTitlesData(
          rightTitles: const AxisTitles(
            sideTitles: SideTitles(
              showTitles: false,
            ),
          ),
          topTitles: const AxisTitles(
            sideTitles: SideTitles(
              showTitles: false,
            ),
          ),
          bottomTitles: const AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
            ),
          ),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, meta) =>
                  Yaxis(taskStatsPercents: taskStatsPercents, meta: meta),
            ),
          ),
        ),
        gridData: const FlGridData(
          show: false,
        ),
        borderData: FlBorderData(
          show: false,
        ),
        maxY: 100,
        minY: 0,
        barGroups: bardata.bardata
            .map((data) => BarChartGroupData(x: data.x, barRods: [
                  BarChartRodData(
                    color: Colors.white,
                    width: 48,
                    toY: data.y * 100,
                  ),
                ]))
            .toList(),
      ),
    );
  }
}