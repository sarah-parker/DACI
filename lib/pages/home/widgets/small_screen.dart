import 'package:daci/constants/text.dart';
import 'package:daci/pages/home/widgets/membership_form.dart';
import 'package:daci/pages/home/widgets/upcoming_events.dart';
import 'package:flutter/material.dart';
import 'package:seo_renderer/seo_renderer.dart';

class HomeSmall extends StatelessWidget {
  final Size screenSize;

  const HomeSmall({Key? key, required this.screenSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UpcomingEvents(screenSize: screenSize),
        Padding(
            padding: EdgeInsets.symmetric(vertical: screenSize.height * .01)),
        MembershipForm(screenSize: screenSize),
        Padding(
            padding: EdgeInsets.symmetric(vertical: screenSize.height * .01)),
        Image.asset(
          'images/cropped-ico.png',
          height: 150,
        ),
        Padding(
            padding: EdgeInsets.symmetric(vertical: screenSize.height * .01)),
        TextRenderer(
          child: Text(
            'About Us',
            style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.left,
          ),
        ),
        Padding(
            padding: EdgeInsets.symmetric(vertical: screenSize.height * .01)),
        const TextRenderer(
          child: Text(
            aboutUsText,
            textAlign: TextAlign.justify,
          ),
        ),
      ],
    );
  }
}
