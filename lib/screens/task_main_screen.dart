import 'package:flutter/material.dart';

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
              colors: [
                Color(0xffe9def7),
                Color(0xffefe4e7),
                Color(0xfff0e5e5),
                Color(0xfff1e5e3),
              ],
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
                        color: const Color.fromARGB(255, 249, 246, 255),
                        elevation: 4.0,
                        padding: const EdgeInsets.only(
                          right: 4.0,
                        ),
                        shape: const CircleBorder(),
                        onPressed: () {},
                        child: const Icon(
                          Icons.chevron_left_outlined,
                          size: 28.0,
                          color: Color(0xff5e5d61),
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
                              color: const Color.fromARGB(255, 246, 245, 247),
                              elevation: 4.0,
                              shape: const CircleBorder(),
                              onPressed: () {},
                              child: const Icon(
                                Icons.calendar_month_outlined,
                                size: 28.0,
                                color: Color(0xff5e5d61),
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
                              color: const Color.fromARGB(255, 255, 255, 255),
                              elevation: 4.0,
                              shape: const CircleBorder(),
                              onPressed: () {},
                              child: const Icon(
                                Icons.search_sharp,
                                size: 28.0,
                                color: Color(0xff5e5d61),
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
                    padding: const EdgeInsets.only(
                      left: 8.0,
                    ),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.32,
                      child: const Text(
                        "Task Statistic",
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
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
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 8.0,
                    bottom: 8.0,
                  ),
                  //BarGraph Section
                  child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.90,
                      height: MediaQuery.of(context).size.height * 0.40,
                      child: BarGraph(taskStatsPercents: taskStatsPercentages)),
                ),
              ),

              //Summary section:
              SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              "Summary",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.50,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.20,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.06,
                                      child: MaterialButton(
                                        padding: EdgeInsets.zero,
                                        color: const Color.fromARGB(
                                            255, 246, 245, 247),
                                        elevation: 4.0,
                                        shape: const CircleBorder(),
                                        onPressed: () {},
                                        child: const Icon(
                                          Icons.equalizer_sharp,
                                          size: 28.0,
                                          color: Color(0xff5e5d61),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.20,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.06,
                                      child: MaterialButton(
                                        padding: EdgeInsets.zero,
                                        color: const Color.fromARGB(
                                            255, 246, 245, 247),
                                        elevation: 4.0,
                                        shape: const CircleBorder(),
                                        onPressed: () {},
                                        child: const Icon(
                                          Icons.more_horiz_outlined,
                                          size: 28.0,
                                          color: Color(0xff5e5d61),
                                        ),
                                      ),
                                    ),
                                  ]),
                            )
                          ]),

                      //Summary Boxes Section:
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 15.0,
                          bottom: 8.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.45,
                              child: const SummaryBoxes(
                                color: Color(0xffe8b85c),
                                text: "Weekly Progress",
                                percentage: "32%",
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.45,
                              child: const SummaryBoxes(
                                color: Color(0xffd8bbc5),
                                text: "Average Task Execution",
                                percentage: "78%",
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
