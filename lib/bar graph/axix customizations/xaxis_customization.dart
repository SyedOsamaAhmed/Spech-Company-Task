// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:spech_interview_task/resources/application_colors.dart';

class XAxis extends StatelessWidget {
  final List<String> months;
  final double value;
  final TitleMeta meta;
  const XAxis({
    Key? key,
    required this.months,
    required this.value,
    required this.meta,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 4.0,
      child: Text(
        softWrap: true,
        months[value.toInt() - 1],
        style: const TextStyle(
          color: ApplicationColors.textColor,
          fontSize: 9,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
