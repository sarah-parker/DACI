import 'package:flutter/material.dart';
import 'package:seo_renderer/seo_renderer.dart';

import 'package:daci/constants/text.dart';
import 'package:daci/pages/committee/widgets/committee_members.dart';
import 'package:daci/widgets/image_slider.dart';

class Committee extends StatelessWidget {
  const Committee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: screenSize.width * 0.05),
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
                  ImageRenderer(
                    alt: 'Downs Arabian Club committee members',
                    child: Image.asset('images/slideshow/Committee.jpg', fit: BoxFit.cover),
                  ),
                  ImageRenderer(
                      alt: 'Downs Arabian Club social event',
                      child: Image.asset('images/slideshow/Social.jpg', fit: BoxFit.cover)),
                  ImageRenderer(
                      alt: 'Downs Arabian Club Top Of The Range Show',
                      child: Image.asset('images/slideshow/Xmas-party-22.jpg', fit: BoxFit.cover)),
                  ImageRenderer(
                      alt: 'Downs Arabian Club Youth & Non-Pro Show',
                      child:
                          Image.asset('images/slideshow/Xmas-party-22.1.jpg', fit: BoxFit.cover)),
                  ImageRenderer(
                    alt: 'Downs Arabian Club Youth & Non-Pro Show',
                    child: Image.asset('images/slideshow/Xmas-party-22.2.jpg', fit: BoxFit.cover),
                  ),
                  ImageRenderer(
                      alt: 'Downs Arabian Club Top Of The Range Show',
                      child:
                          Image.asset('images/slideshow/Xmas-party-22.3.jpg', fit: BoxFit.cover)),
                ],
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
                'Committee',
                style: Theme.of(context).textTheme.displayMedium,
                textAlign: TextAlign.left,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: TextRenderer(child: Text(committeeText)),
            ),
            const CommitteeMembers()
          ],
        ),
      ),
    );
  }
}
