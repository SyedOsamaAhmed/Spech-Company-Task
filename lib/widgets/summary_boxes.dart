// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class SummaryBoxes extends StatelessWidget {
  final Color color;
  final String text;
  final String percentage;
  const SummaryBoxes({
    Key? key,
    required this.color,
    required this.text,
    required this.percentage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.60,
      height: MediaQuery.of(context).size.height * 0.18,
      color: color,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.50,
        child: Column(
          children: [
            Flexible(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.15,
                height: MediaQuery.of(context).size.height * 0.10,
                child: MaterialButton(
                  padding: EdgeInsets.zero,
                  color: const Color.fromARGB(255, 246, 245, 247),
                  elevation: 4.0,
                  shape: const CircleBorder(
                    side: BorderSide(
                      width: 0.5,
                      style: BorderStyle.solid,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {},
                  child: const Icon(
                    Icons.equalizer_sharp,
                    size: 28.0,
                    color: Color(0xff5e5d61),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
