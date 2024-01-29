import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

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
      width: MediaQuery.of(context).size.width * 0.30,
      height: MediaQuery.of(context).size.height * 0.30,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(
            28.0,
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: Align(
              alignment: Alignment.topRight,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.15,
                child: MaterialButton(
                  padding: EdgeInsets.zero,
                  elevation: 4.0,
                  shape: const CircleBorder(
                    side: BorderSide(
                      width: 0.8,
                      style: BorderStyle.solid,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {},
                  child: const Icon(
                    MaterialCommunityIcons.arrow_top_right_thin,
                    size: 28.0,
                    color: Color(0xfffbf2e1),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
            ),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.29,
              child: Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
            ),
            child: Text(
              percentage,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 28,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
