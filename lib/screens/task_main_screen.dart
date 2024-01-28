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
            children: [
              //Icons section:
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.15,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.30,
                      height: MediaQuery.of(context).size.height * 0.10,
                      child: MaterialButton(
                        color: const Color.fromARGB(255, 249, 246, 255),
                        elevation: 4.0,
                        shape: const CircleBorder(),
                        onPressed: () {},
                        child: const Icon(
                          Icons.chevron_left_outlined,
                          size: 28.0,
                          color: Color(0xff5e5d61),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.40,
                      height: MediaQuery.of(context).size.height * 0.15,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.20,
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
                            width: MediaQuery.of(context).size.width * 0.20,
                            height: MediaQuery.of(context).size.height * 0.10,
                            child: MaterialButton(
                              padding: EdgeInsets.zero,
                              color: const Color.fromARGB(255, 255, 255, 255),
                              elevation: 4.0,
                              shape: const CircleBorder(),
                              onPressed: () {},
                              child: const Icon(
                                Icons.search_rounded,
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
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.12,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.32,
                      height: MediaQuery.of(context).size.height * 0.20,
                      child: const Text(
                        "Task Statistics",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            decoration: TextDecoration.none),
                      ),
                    ),
                    const DropDownMenu(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8.0,
                  bottom: 8.0,
                ),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.90,
                    height: MediaQuery.of(context).size.height * 0.35,
                    child: BarGraph(taskStatsPercents: taskStatsPercentages)),
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
                              height: MediaQuery.of(context).size.height * 0.10,
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

                      //Summary Boxes Secttion:
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.20,
                        child: const Row(
                          children: [
                            Flexible(
                              child: SummaryBoxes(
                                color: Color(0xffe8b85c),
                                text: "Weekly Progress",
                                percentage: "32%",
                              ),
                            )
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
