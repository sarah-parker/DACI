import 'package:daci/constants/text.dart';
import 'package:daci/pages/home/widgets/membership_form.dart';
import 'package:daci/pages/home/widgets/upcoming_events.dart';
import 'package:daci/theme/theme_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/style.dart';
import 'package:go_router/go_router.dart';
import 'package:seo_renderer/seo_renderer.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeLarge extends StatelessWidget {
  final Size screenSize;

  const HomeLarge({Key? key, required this.screenSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return daciLight;
      }
      return daciDark;
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(padding: EdgeInsets.only(top: 20)),
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
            // MembershipForm(screenSize: screenSize),
          ],
        )
      ],
    );
  }
}
