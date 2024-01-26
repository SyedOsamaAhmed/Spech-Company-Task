import 'package:spech_interview_task/bar%20graph/classes/individual_bar.dart';

class BarData {
  final double taskStatsJan;
  final double taskStatsFeb;
  final double taskStatsMar;
  final double taskStatsApr;

  BarData({
    required this.taskStatsJan,
    required this.taskStatsFeb,
    required this.taskStatsMar,
    required this.taskStatsApr,
  });

  List<IndividualBar> bardata = [];

  void initialiazeBarData() {
    bardata = [
      IndividualBar(x: 1, y: taskStatsJan),
      IndividualBar(x: 2, y: taskStatsFeb),
      IndividualBar(x: 3, y: taskStatsMar),
      IndividualBar(x: 4, y: taskStatsApr),
    ];
  }
}
