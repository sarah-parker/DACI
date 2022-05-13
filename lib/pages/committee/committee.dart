import 'package:daci/constants/text.dart';
import 'package:daci/pages/committee/widgets/committee_members.dart';
import 'package:daci/widgets/image_slider.dart';
import 'package:flutter/material.dart';

class Committee extends StatelessWidget {
  const Committee({Key? key}) : super(key: key);

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
                  Image.asset('../images/slideshow/Committee.jpg',
                      fit: BoxFit.cover),
                  Image.asset('../images/slideshow/Social.jpg',
                      fit: BoxFit.cover),
                  Image.asset('../images/slideshow/TOTR9.jpg',
                      fit: BoxFit.cover),
                  Image.asset('../images/slideshow/YouNP3.jpg',
                      fit: BoxFit.cover),
                  Image.asset('../images/slideshow/YouNP2.jpeg',
                      fit: BoxFit.cover),
                  Image.asset('../images/slideshow/TOTR6.jpg',
                      fit: BoxFit.cover),
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
              'Committee',
              style: Theme.of(context).textTheme.headline2,
              textAlign: TextAlign.left,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(committeeText),
            ),
            const CommitteeMembers()
          ],
        ),
      ),
    );
  }
}
