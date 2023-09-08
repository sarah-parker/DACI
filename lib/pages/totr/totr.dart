import 'package:flutter/material.dart';
import 'package:seo_renderer/seo_renderer.dart';

import 'package:daci/widgets/image_slider.dart';
import 'package:daci/widgets/screen_size.dart';

import 'widgets/totr_large.dart';
import 'widgets/totr_small.dart';

class Totr extends StatelessWidget {
  const Totr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: 15.0, horizontal: screenSize.width * 0.05),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: ImageRenderer(
                alt: 'Darling Downs Arabian Club Top of the Range Show',
                child: ImageSlider(
                  height: screenSize.height * .5,
                  width: screenSize.width * .5,
                  images: [
                    Image.asset('images/slideshow/TOTR3.jpg',
                        fit: BoxFit.cover),
                    Image.asset('images/slideshow/TOTR4.jpg',
                        fit: BoxFit.cover),
                    Image.asset('images/slideshow/TOTR5.jpg',
                        fit: BoxFit.cover),
                    Image.asset('images/slideshow/TOTR6.jpg',
                        fit: BoxFit.cover),
                    Image.asset('images/slideshow/TOTR7.jpg',
                        fit: BoxFit.cover),
                    Image.asset('images/slideshow/TOTR8.jpg',
                        fit: BoxFit.cover),
                    Image.asset('images/slideshow/TOTR9.jpg',
                        fit: BoxFit.cover),
                    Image.asset('images/slideshow/TOTR10.jpg',
                        fit: BoxFit.cover),
                    Image.asset('images/slideshow/TOTR11.jpg',
                        fit: BoxFit.cover),
                  ],
                ),
              ),
            ),
            Align(
                alignment: Alignment.center,
                child: TextRenderer(
                  child: Text(
                    'Images © Trace Digital',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                )),
            const Padding(padding: EdgeInsets.only(top: 15)),
            TextRenderer(
              child: Text(
                'Top Of The Range Show',
                style: Theme.of(context).textTheme.displayMedium,
                textAlign: TextAlign.left,
              ),
            ),
            // const Padding(padding: EdgeInsets.only(top: 15)),
            // TextRenderer(
            //   child: Text(
            //     'Judged by Kerry Rogers (VIC) and Elissea Schroen (VIC)',
            //     style: Theme.of(context).textTheme.headline5,
            //     textAlign: TextAlign.left,
            //   ),
            // ),
            TextRenderer(
              child: Text(
                '21 - 22 October 2023',
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.left,
              ),
            ),
            Text(
              'Gatton Showgrounds',
              style: Theme.of(context).textTheme.headlineSmall,
              textAlign: TextAlign.left,
            ),
            const Padding(padding: EdgeInsets.only(top: 15)),
            ScreenSizeWidget.isSmallScreen(context)
                ? TotrSmall(screenSize: screenSize)
                : TotrLarge(screenSize: screenSize),
          ],
        ),
      ),
    );
  }
}
