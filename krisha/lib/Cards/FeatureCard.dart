import 'package:flutter/material.dart';

class FeatureCard extends StatelessWidget {
  const FeatureCard({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 29,
      padding: EdgeInsets.only(left: 8, right: 8),
      decoration: BoxDecoration(
        color: Color.fromRGBO(251, 251, 252, 1),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Color.fromRGBO(130, 135, 150, 1),
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
