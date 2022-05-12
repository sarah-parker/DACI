import 'dart:io';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class ImageSlider extends StatelessWidget {
  // final Directory _photoDir = Directory('../images/slideshow');
  final width;
  final height;
  ImageSlider({Key? key, required this.width, required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> images = [
      Image.asset('../images/slideshow/HOTY.jpg', fit: BoxFit.cover),
      Image.asset('../images/slideshow/TOTR.jpg', fit: BoxFit.cover),
      Image.asset('../images/slideshow/YouNP.jpg', fit: BoxFit.cover),
      Image.asset('../images/slideshow/YouNP1.jpg', fit: BoxFit.cover),
      Image.asset('../images/slideshow/YouNP2.jpeg', fit: BoxFit.cover),
      Image.asset('../images/slideshow/TOTR1.jpg', fit: BoxFit.cover),
      Image.asset('../images/slideshow/TOTR2.jpg', fit: BoxFit.cover),
      Image.asset('../images/slideshow/TOTR3.jpg', fit: BoxFit.cover),
      Image.asset('../images/slideshow/TOTR4.jpg', fit: BoxFit.cover),
      Image.asset('../images/slideshow/TOTR5.jpg', fit: BoxFit.cover),
      Image.asset('../images/slideshow/TOTR7.jpg', fit: BoxFit.cover),
      Image.asset('../images/slideshow/TOTR7.jpg', fit: BoxFit.cover),
      Image.asset('../images/slideshow/TOTR8.jpg', fit: BoxFit.cover),
    ];

    return ImageSlideshow(
        initialPage: Random().nextInt(images.length - 1),
        height: height,
        width: width,
        autoPlayInterval: 5000,
        isLoop: true,
        children: images);
  }
}
