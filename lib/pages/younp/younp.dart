import 'package:flutter/material.dart';
import 'package:seo_renderer/seo_renderer.dart';

import 'package:daci/pages/younp/widgets/younp_large.dart';
import 'package:daci/pages/younp/widgets/younp_small.dart';
import 'package:daci/widgets/image_slider.dart';
import 'package:daci/widgets/screen_size.dart';

class Younp extends StatelessWidget {
  const Younp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: screenSize.width * 0.05),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: ImageRenderer(
                alt: 'Darling Downs Arabian Club Youth & Non-Professional Show',
                child: ImageSlider(
                  height: screenSize.height * .5,
                  width: screenSize.width * .5,
                  images: [
                    Image.asset('images/slideshow/YouNP1.jpg', fit: BoxFit.cover),
                    Image.asset('images/slideshow/younp22-winners.jpg', fit: BoxFit.cover),
                    Image.asset('images/slideshow/younp-prizes.jpg', fit: BoxFit.cover),
                    Image.asset('images/slideshow/YouNP2.jpeg', fit: BoxFit.cover),
                    Image.asset('images/slideshow/YouNP3.jpg', fit: BoxFit.cover),
                    Image.asset('images/slideshow/YouNP4.jpg', fit: BoxFit.cover),
                    Image.asset('images/slideshow/YouNP5.jpg', fit: BoxFit.cover),
                    Image.asset('images/slideshow/YouNP6.jpg', fit: BoxFit.cover),
                    Image.asset('images/slideshow/YouNP7.jpg', fit: BoxFit.cover),
                  ],
                ),
              ),
            ),
            Align(
                alignment: Alignment.center,
                child: TextRenderer(
                  child: Text(
                    'Images © Trace Digital',
                    style: Theme.of(context).textTheme.caption,
                  ),
                )),
            const Padding(padding: EdgeInsets.only(top: 15)),
            TextRenderer(
              child: Text(
                'Youth & Non-Professional Show',
                style: Theme.of(context).textTheme.headline2,
                textAlign: TextAlign.left,
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 15)),
            TextRenderer(
              child: Text(
                '30 July 2023',
                style: Theme.of(context).textTheme.headline5,
                textAlign: TextAlign.left,
              ),
            ),
            TextRenderer(
              child: Text(
                'Gatton Showgrounds',
                style: Theme.of(context).textTheme.headline5,
                textAlign: TextAlign.left,
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 15)),

            ScreenSizeWidget.isSmallScreen(context)
                ? YounpSmall(screenSize: screenSize)
                : YounpLarge(screenSize: screenSize),
            // ),
          ],
        ),
      ),
    );
  }
}
