// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:spech_interview_task/bar%20graph/axis%20widgets/x_axis_widget.dart';

class BarGraph extends StatelessWidget {
  const BarGraph({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> months = ["Jan", "Feb", "March", "April"];
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.55,
      child: BarChart(
        BarChartData(
          maxY: 100.0,
          minY: 0.0,
          titlesData: FlTitlesData(
            show: true,
            rightTitles: const AxisTitles(
              sideTitles: SideTitles(
                showTitles: false,
              ),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: (value, meta) =>
                    XAxis(value: value, meta: meta, months: months),
              ),
            ),
          ),
        ),
        swapAnimationDuration: const Duration(milliseconds: 150),
        swapAnimationCurve: Curves.bounceOut,
      ),
    );
  }
}
