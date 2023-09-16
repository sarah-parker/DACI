import 'package:flutter/material.dart';
import 'package:seo_renderer/seo_renderer.dart';

import 'package:daci/constants/text.dart';
import 'package:daci/helpers/file_helpers.dart';
import 'package:daci/models/button_data.dart';
import 'package:daci/widgets/schedule_and_entry.dart';

class YounpSmall extends StatelessWidget {
  final Size screenSize;

  const YounpSmall({Key? key, required this.screenSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ScheduleAndEntry(
          screenSize: screenSize,
          title: 'YouNP 2022 Resources',
          optionsList: [
            ButtonData(
                label: 'Download 2023 Schedule',
                goToRoute: () {
                  downloadFile("assets/pdf/YouNP23-Schedule.pdf",
                      "YouNP23-Schedule.pdf");
                }),
            // ButtonData(
            //     label: 'Enter YouNP',
            //     goToRoute: () async {
            //       Uri uri = Uri.parse(
            //           'https://www.cognitoforms.com/DownsArabianClubInc/YouNP23Nomination');
            //       if (await canLaunchUrl(uri)) {
            //         await launchUrl(uri);
            //       }
            //     }),
          ],
        ),
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
