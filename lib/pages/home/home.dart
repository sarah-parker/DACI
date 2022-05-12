import 'package:daci/pages/home/widgets/large_screen.dart';
import 'package:daci/pages/home/widgets/small_screen.dart';
import 'package:daci/widgets/image_slider.dart';
import 'package:daci/widgets/screen_size.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageSlider(
            height: screenSize.height * 0.65,
            width: screenSize.width,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: 15, horizontal: screenSize.width * 0.1),
            child: ScreenSizeWidget.isSmallScreen(context)
                ? HomeSmall(screenSize: screenSize)
                : HomeLarge(screenSize: screenSize),
          ),
        ],
      ),
    );
  }
}
