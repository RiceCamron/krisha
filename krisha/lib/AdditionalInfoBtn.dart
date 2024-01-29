import 'package:flutter/material.dart';

class AdditionalInfoBtn extends StatelessWidget {
  const AdditionalInfoBtn(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle});
  final String image;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Row(
        children: [
          Image.asset(
            image,
            width: 24,
            height: 24,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
            padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(
                            44,
                            48,
                            53,
                            1,
                          ),
                        ),
                      ),
                      Text(
                        subTitle,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(130, 135, 150, 1),
                        ),
                      ),
                    ],
                  ),
                ),
                Image.asset("assets/icons/arrowtoright_icon.png"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
