import 'package:flutter/material.dart';
import 'package:krisha/Screens/HotelScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: "SF-Pro-Display",
        ),
      home: HotelScreen(),
    );
  }
}
