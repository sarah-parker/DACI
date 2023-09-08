import 'package:flutter/material.dart';
import 'package:seo_renderer/seo_renderer.dart';

import 'package:daci/pages/hoty/widgets/hoty_large.dart';
import 'package:daci/pages/hoty/widgets/hoty_small.dart';
import 'package:daci/widgets/image_slider.dart';
import 'package:daci/widgets/screen_size.dart';

class Hoty extends StatelessWidget {
  const Hoty({Key? key}) : super(key: key);

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
                alt: 'Darling Downs Arabian Club Horse of the Year Show',
                child: ImageSlider(
                  height: screenSize.height * .5,
                  width: screenSize.width * .5,
                  images: [
                    Image.asset('images/slideshow/HOTY.jpg', fit: BoxFit.cover),
                    Image.asset('images/slideshow/HOTY21.jpg',
                        fit: BoxFit.cover),
                    Image.asset('images/slideshow/HOTY22_prizes.jpg',
                        fit: BoxFit.cover),
                    Image.asset('images/slideshow/HOTY22.jpg',
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
                'Qld Arabian Horse Of The Year Show',
                style: Theme.of(context).textTheme.displayMedium,
                textAlign: TextAlign.left,
              ),
            ),
            // const Padding(padding: EdgeInsets.only(top: 15)),
            // TextRenderer(
            //   child: Text(
            //     'Judged by Samantha Watson (NSW)',
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
            TextRenderer(
              child: Text(
                'Gatton Showgrounds',
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.left,
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 15)),
            ScreenSizeWidget.isSmallScreen(context)
                ? HotySmall(screenSize: screenSize)
                : HotyLarge(screenSize: screenSize),
          ],
        ),
      ),
    );
  }
}
