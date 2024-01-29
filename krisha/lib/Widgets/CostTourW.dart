import 'package:flutter/material.dart';

class CostTourW extends StatelessWidget {
  const CostTourW({super.key, required this.info, required this.priceText, required this.infoColor, required this.priceTextColor, required this.priceWeight});
  final String info;
  final String priceText;
  final Color infoColor;
  final Color priceTextColor;
  final FontWeight priceWeight;

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
              color: infoColor,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          Container(
            child: Flexible(
              child: Text(
                priceText,
                maxLines: 2,
                style: TextStyle(
                  color: priceTextColor,
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