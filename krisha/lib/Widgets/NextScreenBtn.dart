import 'package:flutter/material.dart';

class NextScreenBtn extends StatelessWidget {
  const NextScreenBtn({super.key, required this.nextScreen, required this.textBtn});
  final nextScreen;
  final String textBtn;
  @override
  Widget build(BuildContext context) {
    return  Container(
                  height: 40,
                  width: 343,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(13, 114, 255, 1),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => nextScreen,
                        ),
                      );
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