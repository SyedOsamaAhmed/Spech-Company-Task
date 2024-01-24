// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MainTaskScreen extends StatefulWidget {
  const MainTaskScreen({super.key});

  @override
  State<MainTaskScreen> createState() => _MainTaskScreenState();
}

class _MainTaskScreenState extends State<MainTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: const Color.fromARGB(255, 153, 153, 153),
        child: SizedBox(
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
                        size: 38.0,
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
                height: MediaQuery.of(context).size.height * 0.20,
                child: const Row(
                  children: [
                    Text(
                      "Task Statistics",
                      style: TextStyle(fontSize: 23, color: Colors.black),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
