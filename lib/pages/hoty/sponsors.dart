import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HotySponsors extends StatelessWidget {
  const HotySponsors({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    launchURL(String url) async {
      Uri uri = Uri.parse(url);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri);
      } else {}
    }

    return SingleChildScrollView(
      child: Padding(
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
                """As you prepare for the competition, we invite you to explore and support our generous sponsors, whose contributions make this event possible. \n
      Click below to learn more about them and how they enhance our equestrian community.""",
                textAlign: TextAlign.center,
              ),
            ),
            Wrap(
              spacing: 15,
              runSpacing: 15,
              children: [
                Column(
                  children: [
                    Text("• Carlyn Brennan",
                        style: Theme.of(context).textTheme.displayMedium),
                    const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                    Text("• Saddleup Fittings",
                        style: Theme.of(context).textTheme.displayMedium),
                    const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                    Text("• Lisa Kahler",
                        style: Theme.of(context).textTheme.displayMedium),
                  ],
                ),
                MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                        onTap: () =>
                            launchURL('https://toowoombagrooming.com.au/'),
                        child: Image.asset(
                          'images/toowoomba-grooming.png',
                          height: 250,
                        ))),
                MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                        onTap: () => launchURL(
                            'https://www.facebook.com/horseland.goldcoast'),
                        child: Image.asset(
                          'images/Horseland-GC.jpg',
                          height: 250,
                        ))),
                MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                        onTap: () =>
                            launchURL('https://www.hoofprintz.com.au/'),
                        child: Image.asset(
                          'images/hoofprintzlogo.png',
                          height: 250,
                        ))),
                MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                        onTap: () =>
                            launchURL('https://www.facebook.com/manueleqtrans'),
                        child: Image.asset(
                          'images/Manuel-Equine-Transport.jpg',
                          height: 250,
                        ))),
                MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                        onTap: () =>
                            launchURL('https://www.magicbreedplus.com.au/'),
                        child: Image.asset(
                          'images/magic-breed-plus.png',
                          height: 275,
                        ))),
                MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                        onTap: () =>
                            launchURL('https://www.portersplainland.com.au/'),
                        child: Image.asset(
                          'images/porters-plainland-hotel-logo.png',
                          height: 275,
                        ))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
