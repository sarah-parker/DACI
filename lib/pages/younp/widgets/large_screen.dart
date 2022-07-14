import 'package:daci/constants/text.dart';
import 'package:daci/pages/younp/widgets/schedule_and_entry.dart';
import 'package:flutter/material.dart';
import 'package:seo_renderer/seo_renderer.dart';

class YounpLarge extends StatelessWidget {
  final Size screenSize;

  const YounpLarge({Key? key, required this.screenSize}) : super(key: key);

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
              Padding(
                padding: EdgeInsets.only(right: screenSize.width * 0.01),
                child: const TextRenderer(
                  child: Text(
                    younpText,
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
            ],
          ),
        ),
        Column(
          children: [
            ScheduleAndEntry(screenSize: screenSize),
          ],
        )
      ],
    );
  }
}
