import 'package:flutter/material.dart';

class InfoForHotel extends StatelessWidget {
  const InfoForHotel({super.key, required this.info, required this.text});
  final String info, text;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0, right: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            info,
            style: TextStyle(
              color: Color.fromRGBO(130, 135, 150, 1),
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          Container(
            width: 203,
            child: Flexible(
              child: Text(
                text,
                maxLines: 2,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}