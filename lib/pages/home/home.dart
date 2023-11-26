import 'package:flutter/material.dart';
import 'package:seo_renderer/seo_renderer.dart';

import 'package:daci/pages/home/widgets/large_screen.dart';
import 'package:daci/pages/home/widgets/small_screen.dart';
import 'package:daci/widgets/image_slider.dart';
import 'package:daci/widgets/screen_size.dart';

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
          ImageRenderer(
            alt:
                'Darling Downs Arabian Club Top of the Range show (TOTR) & Youth & Non-Professional Show (YouNP)',
            child: ImageSlider(
              height: screenSize.height * 0.67,
              width: screenSize.width,
              images: [
                Image.asset('images/slideshow/HOTY.jpg', fit: BoxFit.cover),
                Image.asset('images/slideshow/Committee.jpg',
                    fit: BoxFit.cover),
                Image.asset('images/slideshow/TOTR.jpg', fit: BoxFit.cover),
                Image.asset('images/slideshow/YouNP1.jpg', fit: BoxFit.cover),
                Image.asset('images/slideshow/TOTR1.jpg', fit: BoxFit.cover),
                Image.asset('images/slideshow/TOTR2.jpg', fit: BoxFit.cover),
                Image.asset('images/slideshow/TOTR3.jpg', fit: BoxFit.cover),
                Image.asset('images/slideshow/TOTR5.jpg', fit: BoxFit.cover),
                Image.asset('images/slideshow/TOTR7.jpg', fit: BoxFit.cover),
                Image.asset('images/slideshow/TOTR8.jpg', fit: BoxFit.cover),
                ImageRenderer(
                    alt: 'Downs Arabian Club Top Of The Range Show',
                    child: Image.asset('images/slideshow/Breeding_clinic2.jpeg',
                        fit: BoxFit.cover)),
                ImageRenderer(
                    alt: 'Downs Arabian Club Top Of The Range Show',
                    child: Image.asset('images/slideshow/Breeding_clinic3.jpeg',
                        fit: BoxFit.cover)),
                Image.asset('images/slideshow/YouNP23_prizes.jpg',
                    fit: BoxFit.cover),
                Image.asset('images/slideshow/YouNP23_prizes2.jpg',
                    fit: BoxFit.cover),
                Image.asset('images/slideshow/YouNP23_winners.jpg',
                    fit: BoxFit.cover),
              ],
            ),
          ),
          Align(
              alignment: Alignment.center,
              child: TextRenderer(
                child: Text(
                  'Images © Trace Digital & Sue Crockett',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              )),
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
