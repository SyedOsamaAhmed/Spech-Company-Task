import 'individual_bar.dart';

class BarGraphData {
  final String taskStatsJan;
  final String taskStatsFeb;
  final String taskStatsMarch;
  final String taskStatsApril;

  BarGraphData({
    required this.taskStatsJan,
    required this.taskStatsFeb,
    required this.taskStatsMarch,
    required this.taskStatsApril,
  });

  List<IndividualBar> barData = [];

  void initializeBarData(List<String> taskStats) {
    barData = [
      IndividualBar(months: "Jan", taskStats: taskStats[0]),
      IndividualBar(months: "Feb", taskStats: taskStats[1]),
      IndividualBar(months: "March", taskStats: taskStats[2]),
      IndividualBar(months: "April", taskStats: taskStats[3]),
    ];
  }
}
