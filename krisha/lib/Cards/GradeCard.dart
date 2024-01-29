import 'package:flutter/material.dart';

class GradeCard extends StatelessWidget {
  const GradeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 29,
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 199, 0, 0.2),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 4.0),
            child: Image.asset(
              "assets/star_icon.png",
              width: 15,
              height: 15,
              color: Color.fromRGBO(255, 168, 0, 1),
            ),
          ),
          Text(
            "5 Превосходно",
            style: TextStyle(
              color: Color.fromRGBO(255, 168, 0, 1),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
