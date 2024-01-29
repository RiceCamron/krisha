import 'package:flutter/material.dart';
import 'package:krisha/Cards/FeatureCard.dart';
import 'package:krisha/Screens/BookingScreen.dart';
import 'package:krisha/Widgets/NextScreenBtn.dart';

class HotelNumberScreen extends StatefulWidget {
  const HotelNumberScreen({super.key});

  @override
  State<HotelNumberScreen> createState() => _HotelNumberScreenState();
}

class _HotelNumberScreenState extends State<HotelNumberScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Steigenberger Makadi",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Color.fromRGBO(0, 0, 0, 1),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: Color.fromRGBO(246, 246, 249, 1),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(
                    top: 20.0, left: 22.0, right: 25.0, bottom: 20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12.0),
                    bottomRight: Radius.circular(12.0),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image.asset(
                        "assets/hotelNumber_img.png",
                        width: 343,
                        height: 257,
                      ),
                      // child: CarouselSlide(),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Стандартный с видом на бассейн или сад",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w500),
                        ),
                    SizedBox(
                      height: 10,
                    ),
                        Row(
                          children: [
                            FeatureCard(
                              text: 'Все включено',
                            ),
                            SizedBox(width: 8,),
                            FeatureCard(
                              text: 'Кондиционер',
                            ),
                          ],
                        ),
                    SizedBox(
                      height: 10,
                    ),
                        Container(
                          width: 192,
                          height: 29,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(13, 114, 255, 0.1),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Подробнее о номере",
                                style: TextStyle(
                                  color: Color.fromRGBO(13, 114, 255, 1),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 4.0),
                                child: Image.asset(
                                  "assets/icons/arrortoright_icon_blue.png",
                                  width: 24,
                                  height: 24,
                                  color: Color.fromRGBO(13, 114, 255, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                    SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "186 600 ₽",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w600,
                                // letterSpacing: -1.5,
                                height: 1.1,
                              ),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                              "за 7 ночей с перелётом",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(130, 135, 150, 1)),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        top: 20.0,
                      ),
                      color: Colors.white,
                      child: NextScreenBtn(nextScreen: BookingScreen(), textBtn: 'Выбрать номер',),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(
                    top: 20.0, left: 22.0, right: 25.0, bottom: 20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12.0),
                    bottomRight: Radius.circular(12.0),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image.asset(
                        "assets/hotelNumber_img.png",
                        width: 343,
                        height: 257,
                      ),
                      // child: CarouselSlide(),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Стандартный с видом на бассейн или сад",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w500),
                        ),
                    SizedBox(
                      height: 10,
                    ),
                        Row(
                          children: [
                            FeatureCard(
                              text: 'Все включено',
                            ),
                            SizedBox(width: 8,),
                            FeatureCard(
                              text: 'Кондиционер',
                            ),
                          ],
                        ),
                    SizedBox(
                      height: 10,
                    ),
                        Container(
                          width: 192,
                          height: 29,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(13, 114, 255, 0.1),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Подробнее о номере",
                                style: TextStyle(
                                  color: Color.fromRGBO(13, 114, 255, 1),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 4.0),
                                child: Image.asset(
                                  "assets/icons/arrortoright_icon_blue.png",
                                  width: 24,
                                  height: 24,
                                  color: Color.fromRGBO(13, 114, 255, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                    SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "186 600 ₽",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w600,
                                // letterSpacing: -1.5,
                                height: 1.1,
                              ),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                              "за 7 ночей с перелётом",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(130, 135, 150, 1)),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        top: 20.0,
                      ),
                      color: Colors.white,
                      child: NextScreenBtn(nextScreen: BookingScreen(), textBtn: 'Выбрать номер',),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
