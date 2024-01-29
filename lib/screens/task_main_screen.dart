import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import 'package:spech_interview_task/resources/app_colors.dart';

import 'package:spech_interview_task/widgets/bar_graph.dart';

import 'package:spech_interview_task/widgets/dropdown_menu.dart';
import 'package:spech_interview_task/widgets/summary_boxes.dart';

class MainTaskScreen extends StatefulWidget {
  const MainTaskScreen({super.key});

  @override
  State<MainTaskScreen> createState() => _MainTaskScreenState();
}

class _MainTaskScreenState extends State<MainTaskScreen> {
  List<double> taskStatsPercentages = [
    0.75,
    0.90,
    0.73,
    0.30,
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              stops: [0.1, 0.5, 0.7, 0.9],
              colors: ApplicationColors.gradientContainer,
            ),
          ),
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //Icons section:
              Padding(
                padding: const EdgeInsets.only(
                  top: 8.0,
                  left: 8.0,
                  bottom: 8.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.15,
                      height: MediaQuery.of(context).size.height * 0.10,
                      child: MaterialButton(
                        color: ApplicationColors.iconBackgroundColor,
                        elevation: 4.0,
                        padding: const EdgeInsets.only(
                          right: 4.0,
                        ),
                        shape: const CircleBorder(),
                        onPressed: () {},
                        child: const Icon(
                          Icons.chevron_left_outlined,
                          size: 28.0,
                          color: ApplicationColors.iconChevronColor,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 8.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.15,
                            height: MediaQuery.of(context).size.height * 0.10,
                            child: MaterialButton(
                              padding: EdgeInsets.zero,
                              color: ApplicationColors.iconBackgroundColor,
                              elevation: 4.0,
                              shape: const CircleBorder(),
                              onPressed: () {},
                              child: const Icon(
                                EvilIcons.calendar,
                                size: 22.0,
                                color: ApplicationColors.calenderColor,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.01,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.15,
                            height: MediaQuery.of(context).size.height * 0.10,
                            child: MaterialButton(
                              padding: EdgeInsets.zero,
                              color: ApplicationColors.iconBackgroundColor,
                              elevation: 4.0,
                              shape: const CircleBorder(),
                              onPressed: () {},
                              child: const Icon(
                                Icons.search_sharp,
                                size: 28.0,
                                color: ApplicationColors.searchIconColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              //Task Stats Section:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8.0,
                    ),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.32,
                      child: const Text(
                        "Task Statistic",
                        style: TextStyle(
                            fontSize: 24,
                            color: ApplicationColors.textColor,
                            letterSpacing: 0.2,
                            decoration: TextDecoration.none),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      right: 12.0,
                      top: 18.0,
                    ),
                    child: DropDownMenu(),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 12.0,
                  bottom: 8.0,
                ),
                //BarGraph Section
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.90,
                    height: MediaQuery.of(context).size.height * 0.30,
                    child: BarGraph(taskStatsPercents: taskStatsPercentages)),
              ),

              //Summary section:
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(
                              left: 5.0,
                            ),
                            child: Text(
                              "Summary",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 7.0,
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.10,
                                  height:
                                      MediaQuery.of(context).size.height * 0.10,
                                  child: MaterialButton(
                                    color:
                                        ApplicationColors.iconBackgroundColor,
                                    elevation: 4.0,
                                    padding: EdgeInsets.zero,
                                    shape: const CircleBorder(),
                                    onPressed: () {},
                                    child: const Icon(
                                      Feather.sliders,
                                      size: 20.0,
                                      color: ApplicationColors.sliderColor,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.01,
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.10,
                                  height:
                                      MediaQuery.of(context).size.height * 0.10,
                                  child: MaterialButton(
                                    color:
                                        ApplicationColors.iconBackgroundColor,
                                    elevation: 4.0,
                                    shape: const CircleBorder(),
                                    padding: EdgeInsets.zero,
                                    onPressed: () {},
                                    child: const Icon(
                                      Icons.more_horiz_outlined,
                                      size: 20.0,
                                      color: ApplicationColors
                                          .moreHorizOutlinedColor,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ]),

                    //Summary Boxes Section:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.45,
                          height: MediaQuery.of(context).size.height * 0.27,
                          child: const SummaryBoxes(
                            boxColor: ApplicationColors.summaryTextBox1Color,
                            text: "Weekly Progress",
                            percentage: "32%",
                            textColor:
                                ApplicationColors.summaryTextBox1TextColor,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.45,
                          height: MediaQuery.of(context).size.height * 0.27,
                          child: const SummaryBoxes(
                            boxColor: ApplicationColors.summaryTextBox2Color,
                            text: "Average Task Execution",
                            percentage: "78%",
                            textColor:
                                ApplicationColors.summaryTextBox2TextColor,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
