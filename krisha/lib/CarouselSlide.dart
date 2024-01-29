import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';

final List<String> images = [
  'assets/hotel_img.png',
  'assets/hotel_img.png',
  'assets/hotel_img.png',
  'assets/hotel_img.png',
  'assets/hotel_img.png',
];

final List<Color> colors = [
  Colors.grey.shade800,
  Colors.grey.shade600,
  Colors.grey.shade400,
  Colors.grey.shade200,
];

class CarouselSlide extends StatefulWidget {
  @override
  _CarouselSlideState createState() => _CarouselSlideState();
}

class _CarouselSlideState extends State<CarouselSlide> {
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          items: images
              .map(
                (image) => Image.asset(
                  "assets/hotel_img.png",
                  width: 343,
                  height: 257,
                ),
              )
              .toList(),
          options: CarouselOptions(
            viewportFraction: 1.0,
            initialPage: 0,
            autoPlay: true,
            height: 400.0,
            onPageChanged: (index, reason) {
              setState(() {
                _currentPage = index;
              });
            },
          ),
        ),
        Positioned(
          bottom: 20.0,
          left: 0.0,
          right: 0.0,
          child: DotsIndicator(
            dotsCount: 5,
            position: _currentPage.toDouble(),
            decorator: DotsDecorator(
              color: colors[(_currentPage + 1) % colors.length],
              activeColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              size: const Size(8.0, 8.0),
              activeSize: const Size(12.0, 12.0),
            ),
          ),
        ),
      ],
    );
  }
}
