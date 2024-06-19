import 'package:flutter/material.dart';
import 'package:seo_renderer/seo_renderer.dart';

import 'package:daci/constants/text.dart';
import 'package:daci/helpers/file_helpers.dart';
import 'package:daci/models/button_data.dart';
import 'package:daci/widgets/schedule_and_entry.dart';

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
            ScheduleAndEntry(
              screenSize: screenSize,
              title: 'YouNP 2024 Resources',
              optionsList: [
                ButtonData(
                    label: 'Download 2024 Schedule',
                    goToRoute: () {
                      downloadFile("assets/pdf/YouNP24-Schedule.pdf",
                          "YouNP24 Schedule.pdf");
                    }),
                // ButtonData(
                //     label: 'Enter YouNP',
                //     goToRoute: () async {
                //       Uri uri = Uri.parse(
                //           'https://www.cognitoforms.com/DownsArabianClubInc/YouNP23Nomination');
                //       if (await canLaunchUrl(uri)) {
                //         await launchUrl(uri);
                //       }
                // }),
              ],
            ),
          ],
        )
      ],
    );
  }
}
