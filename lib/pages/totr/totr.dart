import 'package:daci/constants/text.dart';
import 'package:daci/widgets/image_slider.dart';
import 'package:flutter/material.dart';

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
              child: ImageSlider(
                height: screenSize.height * .5,
                width: screenSize.width * .5,
                images: [
                  Image.asset('images/slideshow/TOTR3.jpg', fit: BoxFit.cover),
                  Image.asset('images/slideshow/TOTR4.jpg', fit: BoxFit.cover),
                  Image.asset('images/slideshow/TOTR5.jpg', fit: BoxFit.cover),
                  Image.asset('images/slideshow/TOTR6.jpg', fit: BoxFit.cover),
                  Image.asset('images/slideshow/TOTR7.jpg', fit: BoxFit.cover),
                  Image.asset('images/slideshow/TOTR8.jpg', fit: BoxFit.cover),
                  Image.asset('images/slideshow/TOTR9.jpg', fit: BoxFit.cover),
                  Image.asset('images/slideshow/TOTR10.jpg', fit: BoxFit.cover),
                  Image.asset('images/slideshow/TOTR11.jpg', fit: BoxFit.cover),
                ],
              ),
            ),
            Align(
                alignment: Alignment.center,
                child: Text(
                  'Images © Trace Digital',
                  style: Theme.of(context).textTheme.caption,
                )),
            const Padding(padding: EdgeInsets.only(top: 15)),
            Text(
              'Top Of The Range Show',
              style: Theme.of(context).textTheme.headline2,
              textAlign: TextAlign.left,
            ),
            const Padding(padding: EdgeInsets.only(top: 15)),
            Text(
              '22 - 23 October 2022',
              style: Theme.of(context).textTheme.headline5,
              textAlign: TextAlign.left,
            ),
            // Text(
            //   'Laidley Showgrounds',
            //   style: Theme.of(context).textTheme.headline5,
            //   textAlign: TextAlign.left,
            // ),

            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(totrText),
            ),
          ],
        ),
      ),
    );
  }
}
