import 'package:daci/widgets/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:seo_renderer/seo_renderer.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:daci/constants/text.dart';
import 'package:daci/pages/home/widgets/upcoming_events.dart';

class HomeSmall extends StatelessWidget {
  final Size screenSize;

  const HomeSmall({Key? key, required this.screenSize}) : super(key: key);

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

    launchURL(String url) async {
      Uri uri = Uri.parse(url);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri);
      } else {}
    }

    return Column(
      children: [
        // Padding(padding: EdgeInsets.symmetric(vertical: screenSize.height * .01)),
        // AgmNotice(screenSize: screenSize),
        // MouseRegion(
        //     cursor: SystemMouseCursors.click,
        //     child: GestureDetector(
        //         onTap: () => launchURL(
        //             'https://www.cognitoforms.com/DownsArabianClubInc/MagicBreedRaffle2'),
        //         child: Image.asset(
        //           'images/Raffle-Flyer23.jpg',
        //           width: screenSize.width,
        //         ))),

        Padding(
            padding: EdgeInsets.symmetric(vertical: screenSize.height * .01)),
        UpcomingEvents(screenSize: screenSize),
        Padding(
            padding: EdgeInsets.symmetric(vertical: screenSize.height * .01)),
        // MembershipForm(screenSize: screenSize),
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
            style: Theme.of(context).textTheme.displayMedium,
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
