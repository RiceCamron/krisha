import 'package:flutter/material.dart';

class BackScreenBtn extends StatelessWidget {
  const BackScreenBtn({super.key, required this.textBtn});
  final String textBtn;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 343,
      decoration: BoxDecoration(
        color: Color.fromRGBO(13, 114, 255, 1),
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextButton(
        onPressed: () {
          Navigator.of(context).popUntil((route) => route.isFirst);
        },
        child: Text(
          textBtn,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
