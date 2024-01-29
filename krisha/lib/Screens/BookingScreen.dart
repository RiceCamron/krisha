import 'package:flutter/material.dart';
import 'package:krisha/Cards/GradeCard.dart';
import 'package:krisha/Cards/TouristInfoCard.dart';
import 'package:krisha/Screens/PaidScreen.dart';
import 'package:krisha/Widgets/CostTourW.dart';
import 'package:krisha/Widgets/InfoForHotel.dart';
import 'package:krisha/Widgets/NextScreenBtn.dart';
import 'package:krisha/Widgets/TextFromField.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({Key? key}) : super(key: key);

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Бронирование",
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
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(
                    top: 20.0, left: 22.0, right: 25.0, bottom: 20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(top: 20.0, left: 22.0, bottom: 20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InfoForHotel(info: "Вылет из", text: "Санкт-Петербург"),
                    InfoForHotel(
                        info: "Страна, город", text: "Египет, Хургада"),
                    InfoForHotel(info: "Даты", text: "19.09.2023 – 27.09.2023"),
                    InfoForHotel(info: "Кол-во ночей", text: "7 ночей"),
                    InfoForHotel(info: "Отель", text: "Steigenberger Makadi"),
                    InfoForHotel(
                        info: "Номер",
                        text: "Стандартный с видом на бассейн или сад"),
                    InfoForHotel(info: "Питание", text: "Все включено"),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(
                    top: 20.0, left: 22.0, right: 22.0, bottom: 20.0),
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
                      "Информация о покупателе",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFromField(hintText: "Номер телефона"),
                    TextFromField(hintText: "Почта"),
                    Text(
                      "Эти данные никому не передаются. После оплаты мы вышли чек на указанный вами номер и почту",
                      style: TextStyle(
                        color: Color.fromRGBO(130, 135, 150, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TouristInfoCard(title: "Первый турист", isExpanded: true),
              SizedBox(
                height: 10,
              ),
              TouristInfoCard(title: "Второй турист", isExpanded: false),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(
                    top: 20.0, left: 22.0, right: 22.0, bottom: 20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Добавить туриста",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.w500),
                        ),
                        TextButton(
                          onPressed: () => {setState(() {})},
                          child: Container(
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(13, 114, 255, 1),
                              borderRadius: BorderRadius.all(
                                Radius.circular(6),
                              ),
                            ),
                            child: Image.asset("assets/icons/add_icon.png"),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.only(top: 20.0, left: 22.0, bottom: 20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CostTourW(
                      info: 'Тур',
                      priceText: '186 600 ₽',
                      infoColor: Color.fromRGBO(130, 135, 150, 1),
                      priceTextColor: Colors.black,
                      priceWeight: FontWeight.w400,
                    ),
                    CostTourW(
                      info: 'Топливный сбор',
                      priceText: '9 300 ₽',
                      infoColor: Color.fromRGBO(130, 135, 150, 1),
                      priceTextColor: Colors.black,
                      priceWeight: FontWeight.w400,
                    ),
                    CostTourW(
                      info: 'Сервисный сбор',
                      priceText: '2 136 ₽',
                      infoColor: Color.fromRGBO(130, 135, 150, 1),
                      priceTextColor: Colors.black,
                      priceWeight: FontWeight.w400,
                    ),
                    CostTourW(
                      info: 'К оплате',
                      priceText: '198 036 ₽',
                      infoColor: Color.fromRGBO(130, 135, 150, 1),
                      priceTextColor: Color.fromRGBO(13, 114, 255, 1),
                      priceWeight: FontWeight.w600,
                    ),
                  ],
                ),
              ),

                    SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(
                    top: 20.0, left: 22.0, right: 50.0, bottom: 40.0),
                color: Colors.white,
                child: NextScreenBtn(nextScreen: PaidScreen(), textBtn: 'Оплатить 198 036 ₽',),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget infoForHotel(String info, String text) {
  //   return Padding(
  //     padding: const EdgeInsets.only(bottom: 10.0, right: 30),
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: [
  //         Text(
  //           info,
  //           style: TextStyle(
  //             color: Color.fromRGBO(130, 135, 150, 1),
  //             fontSize: 16,
  //             fontWeight: FontWeight.w400,
  //           ),
  //         ),
  //         Container(
  //           width: 203,
  //           child: Flexible(
  //             child: Text(
  //               text,
  //               maxLines: 2,
  //               style: TextStyle(
  //                 color: Colors.black,
  //                 fontSize: 16,
  //                 fontWeight: FontWeight.w400,
  //                 overflow: TextOverflow.ellipsis,
  //               ),
  //             ),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  // Widget textFormField(String hintText) {
  //   return Padding(
  //     padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
  //     child: AnimatedContainer(
  //       duration: Duration(milliseconds: 200),
  //       curve: Curves.easeInOut,
  //       height: 65.0,
  //       padding: EdgeInsets.only(
  //         left: 16.0,
  //         top: _isFocused ? 10.0 : 6.0,
  //         bottom: 2.0,
  //         right: 16.0,
  //       ),
  //       decoration: BoxDecoration(
  //         borderRadius: BorderRadius.all(Radius.circular(10.0)),
  //         color: Color.fromRGBO(246, 246, 249, 1),
  //       ),
  //       child: Stack(
  //         children: [
  //           TextField(
  //             decoration: InputDecoration(
  //               border: InputBorder.none,
  //               hintText: hintText,
  //               hintStyle: TextStyle(
  //                 fontSize: 16.0,
  //                 color:
  //                     _isFocused ? Colors.grey.shade400 : Colors.grey.shade600,
  //               ),
  //             ),
  //             onChanged: (text) {
  //               setState(() {
  //                 _isFocused = text.isNotEmpty;
  //               });
  //             },
  //           ),
  //           AnimatedPositioned(
  //             duration: Duration(milliseconds: 200),
  //             curve: Curves.easeInOut,
  //             top: _isFocused ? 0.0 : 12.0,
  //             left: 4.0,
  //             child: Text(
  //               hintText,
  //               style: TextStyle(
  //                 fontSize: 12.0,
  //                 color: _isFocused
  //                     ? Colors.grey.shade400
  //                     : Color.fromARGB(0, 117, 117, 117),
  //               ),
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
