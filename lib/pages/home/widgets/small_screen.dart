import 'package:daci/constants/text.dart';
import 'package:daci/pages/home/widgets/upcoming_events.dart';
import 'package:flutter/material.dart';

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
        Text(
          'About Us',
          style: Theme.of(context).textTheme.headline2,
          textAlign: TextAlign.left,
        ),
        Padding(
            padding: EdgeInsets.symmetric(vertical: screenSize.height * .01)),
        const Text(
          aboutUsText,
          textAlign: TextAlign.justify,
        ),
      ],
    );
  }
}
