import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class ImageSlider extends StatelessWidget {
  final double width;
  final double height;
  final List<Widget> images;

  const ImageSlider(
      {Key? key,
      required this.width,
      required this.height,
      required this.images})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
        initialPage: Random().nextInt(images.length - 1),
        height: height,
        width: width,
        autoPlayInterval: 5000,
        isLoop: true,
        children: images);
  }
}
