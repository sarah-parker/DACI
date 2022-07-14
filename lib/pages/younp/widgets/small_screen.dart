import 'package:daci/constants/text.dart';
import 'package:daci/pages/younp/widgets/schedule_and_entry.dart';
import 'package:flutter/material.dart';
import 'package:seo_renderer/seo_renderer.dart';

class YounpSmall extends StatelessWidget {
  final Size screenSize;

  const YounpSmall({Key? key, required this.screenSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ScheduleAndEntry(screenSize: screenSize),
        Padding(
            padding: EdgeInsets.symmetric(vertical: screenSize.height * .01)),
        const TextRenderer(
          child: Text(
            younpText,
            textAlign: TextAlign.justify,
          ),
        ),
      ],
    );
  }
}
