import 'package:flutter/material.dart';
import 'package:seo_renderer/seo_renderer.dart';

import 'package:daci/constants/text.dart';
import 'package:daci/pages/home/widgets/agm_notice.dart';
import 'package:daci/pages/home/widgets/upcoming_events.dart';

class HomeLarge extends StatelessWidget {
  final Size screenSize;

  const HomeLarge({Key? key, required this.screenSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Color getColor(Set<MaterialState> states) {
    //   const Set<MaterialState> interactiveStates = <MaterialState>{
    //     MaterialState.pressed,
    //     MaterialState.hovered,
    //     MaterialState.focused,
    //   };
    //   if (states.any(interactiveStates.contains)) {
    //     return daciLight;
    //   }
    //   return daciDark;
    // }

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
                  style: Theme.of(context).textTheme.displayMedium,
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
            AgmNotice(screenSize: screenSize),
            const Padding(padding: EdgeInsets.symmetric(vertical: 12)),
            UpcomingEvents(screenSize: screenSize),

            // MembershipForm(screenSize: screenSize),
          ],
        )
      ],
    );
  }
}
