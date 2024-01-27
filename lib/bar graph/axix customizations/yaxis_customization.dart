// ignore_for_file: public_member_api_docs, sort_constructors_first
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

    taskStatsPercents.map((data) {
      value = data;

      switch (value) {
        case 1:
          {
            value == 0.75 ? text = "75%" : null;
            break;
          }
        case 2:
          {
            value == 0.90 ? text = "90%" : null;
            break;
          }
        case 3:
          {
            value == 0.73 ? text = "73%" : null;
            break;
          }
        case 4:
          {
            value == 0.30 ? text = "30%" : null;
            break;
          }

        default:
          break;
      }
    }).toList();

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 0.0,
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
    );
  }
}
