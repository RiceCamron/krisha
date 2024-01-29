import 'package:flutter/material.dart';

import 'package:krisha/Widgets/BackScreenBtn.dart';

class PaidScreen extends StatefulWidget {
  const PaidScreen({super.key});

  @override
  State<PaidScreen> createState() => _PaidScreenState();
}

class _PaidScreenState extends State<PaidScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Заказ оплачен",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Color.fromRGBO(0, 0, 0, 1),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.white,
                  padding: EdgeInsets.only(top: 103),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  height: 94,
                  width: 94,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        1000,
                      ),
                    ),
                    color: Color.fromRGBO(246, 246, 249, 1),
                  ),
                  child: Center(
                      child: Image.asset("assets/icons/partypoper_icon.png")),
                ),
                SizedBox(height: 10),
                Text(
                  "Ваш заказ принят в работу",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 10),
                Container(
                  width: 329,
                  child: Text(
                    "Подтверждение заказа №104893 может занять некоторое время (от 1 часа до суток). Как только мы получим ответ от туроператора, вам на почту придет уведомление.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(130, 135, 150, 1),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(
                  top: 20.0, left: 22.0, right: 22.0, bottom: 40.0),
              color: Colors.white,
              child: BackScreenBtn(
                textBtn: 'Супер!',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
