import 'package:daci/constants/text.dart';
import 'package:daci/pages/home/widgets/membership_form.dart';
import 'package:daci/pages/home/widgets/upcoming_events.dart';
import 'package:flutter/material.dart';
import 'package:seo_renderer/seo_renderer.dart';

class HomeLarge extends StatelessWidget {
  final Size screenSize;

  const HomeLarge({Key? key, required this.screenSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'images/cropped-ico.png',
                height: 150,
              ),
              const Padding(padding: EdgeInsets.only(top: 15)),
              TextRenderer(
                child: Text(
                  'About Us',
                  style: Theme.of(context).textTheme.headline2,
                  textAlign: TextAlign.left,
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 15)),
              Padding(
                padding: EdgeInsets.only(right: screenSize.width * 0.02),
                child: const TextRenderer(
                  child: Text(
                    aboutUsText,
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
            ],
          ),
        ),
        Column(
          children: [
            UpcomingEvents(screenSize: screenSize),
            const Padding(padding: EdgeInsets.symmetric(vertical: 12)),
            MembershipForm(
              screenSize: screenSize,
            )
          ],
        )
      ],
    );
  }
}
