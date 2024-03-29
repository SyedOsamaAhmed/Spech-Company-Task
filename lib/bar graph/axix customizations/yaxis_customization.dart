// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:spech_interview_task/resources/application_colors.dart';

class Yaxis extends StatelessWidget {
  final double value;
  final TitleMeta meta;

  const Yaxis({
    Key? key,
    required this.value,
    required this.meta,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 0.0,
      child: Text(
        softWrap: true,
        "${(value.toInt()).toString()}%",
        style: const TextStyle(
          color: ApplicationColors.textColor,
          fontSize: 7.5,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
