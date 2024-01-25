import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:spech_interview_task/widgets/bar_graph.dart';

class MainTaskScreen extends StatefulWidget {
  const MainTaskScreen({super.key});

  @override
  State<MainTaskScreen> createState() => _MainTaskScreenState();
}

class _MainTaskScreenState extends State<MainTaskScreen> {
  final List<String> months = [
    'Jan',
    'Feb',
    'March',
    'April',
  ];

  List<String> taskStats = ["75%", "90%", "73%", "30%"];

  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: const Color(0xffe9dff4),
          height: MediaQuery.of(context).size.height * 85,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.30,
                    height: MediaQuery.of(context).size.height * 0.10,
                    child: MaterialButton(
                      color: const Color(0xfff5f1fe),
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
                            color: const Color(0xfff5f1fe),
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
                            color: const Color(0xfff5f1fe),
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
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.25,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.32,
                      height: MediaQuery.of(context).size.height * 0.20,
                      child: const Padding(
                        padding: EdgeInsets.only(top: 18.0),
                        child: Text(
                          "Task Statistics",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              decoration: TextDecoration.none),
                        ),
                      ),
                    ),
                    DropdownButton2(
                      hint: const Text("Monthly"),
                      value: selectedValue,
                      onChanged: (value) => setState(() {
                        selectedValue = value;
                      }),
                      items: months
                          .map(
                            (item) => DropdownMenuItem(
                              value: item,
                              child: Text(item),
                            ),
                          )
                          .toList(),
                      buttonStyleData: ButtonStyleData(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            border: Border.all(
                              style: BorderStyle.none,
                            ),
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              const BarGraph(
                taskStats: [],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
