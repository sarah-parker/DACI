import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HotySponsors extends StatelessWidget {
  const HotySponsors({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    _launchURL(String url) async {
      Uri uri = Uri.parse(url);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri);
      } else {}
    }

    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: 25.0, horizontal: screenSize.width * 0.05),
      child: Column(
        children: [
          Image.asset(
            'images/cropped-ico.png',
            height: 250,
          ),
          Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                "Thank you for your entry to Qld Arabian Horse of the Year. \nWe're thrilled to have you as part of our prestigious event!",
                style: Theme.of(context).textTheme.displayMedium,
                textAlign: TextAlign.center,
              )),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
                "As you prepare for the competition, we invite you to explore and support our generous sponsors, whose contributions make this event possible. \n" +
                    "Click below to learn more about them and how they enhance our equestrian community."),
          ),
          Wrap(
            spacing: 15,
            children: [
              MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                      onTap: () =>
                          _launchURL('https://toowoombagrooming.com.au/'),
                      child: Image.asset(
                        'images/toowoomba-grooming.png',
                        height: 250,
                      ))),
              // MouseRegion(
              //     cursor: SystemMouseCursors.click,
              //     child: GestureDetector(
              //         onTap: () =>
              //             _launchURL('https://toowoombagrooming.com.au/'),
              //         child: Image.asset(
              //           'images/toowoomba-grooming.png',
              //           height: 250,
              //         )))
            ],
          ),
        ],
      ),
    );
  }
}
