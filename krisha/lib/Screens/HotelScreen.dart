import 'package:flutter/material.dart';

import 'package:krisha/AdditionalInfoBtn.dart';
import 'package:krisha/Cards/FeatureCard.dart';
import 'package:krisha/Cards/GradeCard.dart';
import 'package:krisha/Screens/HotelNumberScreen.dart';
import 'package:krisha/Widgets/NextScreenBtn.dart';

class HotelScreen extends StatefulWidget {
  const HotelScreen({super.key});

  @override
  State<HotelScreen> createState() => _HotelScreenState();
}

class _HotelScreenState extends State<HotelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Отель",
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
                        "assets/hotel_img.png",
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
                        GradeCard(),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Steigenberger Makadi",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Madinat Makadi, Safaga Road, Makadi Bay, Египет",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(13, 114, 255, 1)),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "от 134 673 ₽",
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
                              "за тур с перелётом",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(130, 135, 150, 1)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(
                    top: 20.0, left: 22.0, right: 20.0, bottom: 20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Об отеле",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            FeatureCard(
                              text: "3-я линия",
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            FeatureCard(
                              text: "Платный Wi-Fi в фойе",
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            FeatureCard(
                              text: "30 км до аэропорта",
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            FeatureCard(
                              text: "1 км до пляжа",
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Отель VIP-класса с собственными гольф полями. Высокий уровнь сервиса. Рекомендуем для респектабельного отдыха. Отель принимает гостей от 18 лет!",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(0, 0, 0, 0.9)),
                        ),
                        SizedBox(height: 16),
                        Container(
                          width: MediaQuery.of(context).size.width - 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15.0),
                            ),
                            color: Color.fromRGBO(251, 251, 252, 1),
                          ),
                          child: Column(
                            children: [
                              AdditionalInfoBtn(
                                image: "assets/icons/emoji_happy_icon.png",
                                title: "Удобства",
                                subTitle: "Самое необходимое",
                              ),
                              AdditionalInfoBtn(
                                image: "assets/icons/tick_square_icon.png",
                                title: "Что включено",
                                subTitle: "Самое необходимое",
                              ),
                              AdditionalInfoBtn(
                                image: "assets/icons/close_square_icon.png",
                                title: "Что не включено",
                                subTitle: "Самое необходимое",
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(
                    top: 20.0, left: 22.0, right: 22.0, bottom: 40.0),
                color: Colors.white,
                child: NextScreenBtn(nextScreen: HotelNumberScreen(), textBtn: 'К выбору номера',),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
