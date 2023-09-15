import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TOTRSponsors extends StatelessWidget {
  const TOTRSponsors({super.key});

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
                "Thank you for your entry to Top of the Range Arabian Event. \nWe're excited to have you join us for this incredible event!",
                style: Theme.of(context).textTheme.displayMedium,
                textAlign: TextAlign.center,
              )),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
                "As we gear up for the competition, we'd like to express our gratitude to our dedicated sponsors. They play a vital role in making this show a success. \n" +
                    "Please take a moment to discover our sponsors' offerings by clicking below. Your support of their businesses is a valuable part of our equestrian community."),
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
