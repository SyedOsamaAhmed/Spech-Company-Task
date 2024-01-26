// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class XAxis extends StatelessWidget {
  final double value;
  final TitleMeta meta;
  final List<String> months;

  const XAxis({
    Key? key,
    required this.value,
    required this.meta,
    required this.months,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Widget text = Text(
      months[value.toInt()],
      style: const TextStyle(
        color: Color(0xff7589a2),
        fontWeight: FontWeight.bold,
        fontSize: 14,
      ),
    );
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 16, //margin top
      child: text,
    );
  }
}
