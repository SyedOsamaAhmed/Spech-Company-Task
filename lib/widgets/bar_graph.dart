import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:spech_interview_task/bar%20graph/axix%20customizations/xaxis_customization.dart';
import 'package:spech_interview_task/bar%20graph/axix%20customizations/yaxis_customization.dart';
import 'package:spech_interview_task/bar%20graph/classes/bar_data.dart';
import 'package:spech_interview_task/resources/application_colors.dart';

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
    List<String> months = ["Jan", "Feb", "Mar", "Apr"];
    return BarChart(
      BarChartData(
        barTouchData: BarTouchData(
          enabled: true,
          touchTooltipData: BarTouchTooltipData(
            tooltipMargin: 0.0,
            fitInsideVertically: true,
            getTooltipItem: (group, groupIndex, rod, rodIndex) =>
                BarTooltipItem(
              "${(rod.toY.toInt()).toString()}%",
              const TextStyle(
                color: ApplicationColors.textColor,
                fontWeight: FontWeight.w400,
              ),
            ),
            tooltipRoundedRadius: 42.0,
            tooltipBgColor: ApplicationColors.tooltipBackgroundColor,
          ),
        ),
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
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, meta) =>
                  XAxis(months: months, value: value, meta: meta),
            ),
          ),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, meta) => Yaxis(
                meta: meta,
                value: value,
              ),
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
                    width: 45,
                    toY: data.y * 100,
                  ),
                ]))
            .toList(),
      ),
    );
  }
}
