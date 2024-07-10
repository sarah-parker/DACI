import 'package:flutter/material.dart';
import 'package:seo_renderer/seo_renderer.dart';

import 'package:daci/constants/text.dart';
import 'package:daci/helpers/file_helpers.dart';
import 'package:daci/models/button_data.dart';
import 'package:daci/widgets/schedule_and_entry.dart';
import 'package:url_launcher/url_launcher.dart';

class HotySmall extends StatelessWidget {
  final Size screenSize;

  const HotySmall({Key? key, required this.screenSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ScheduleAndEntry(
          screenSize: screenSize,
          title: 'HOTY 2024 Resources',
          optionsList: [
            // ButtonData(
            //     label: 'Enter HOTY',
            //     goToRoute: () async {
            //       Uri uri = Uri.parse(
            //           'https://www.cognitoforms.com/DownsArabianClubInc/HOTY23Nomination');
            //       if (await canLaunchUrl(uri)) {
            //         await launchUrl(uri);
            //       }
            //     }),
            ButtonData(
                label: 'Download 2024 Schedule',
                goToRoute: () {
                  downloadFile("assets/pdf/HOTY_Schedule_2024.pdf",
                      "HOTY_Schedule_2024.pdf");
                }),
            ButtonData(
                label: 'Download Horse Health Declaration',
                goToRoute: () {
                  downloadFile("assets/pdf/Horse_Health_Dec.pdf",
                      "Horse-Health-Declaration.pdf");
                }),
            ButtonData(
                label: 'Download Sponsorship Opportunities',
                goToRoute: () {
                  downloadFile("assets/pdf/HOTY_Sponsorship_Opportunities.pdf",
                      "HOTY_Sponsorship_Opportunities.pdf");
                }),
          ],
        ),
        Padding(
            padding: EdgeInsets.symmetric(vertical: screenSize.height * .01)),
        const TextRenderer(
          child: Text(
            hotyText,
            textAlign: TextAlign.justify,
          ),
        ),
      ],
    );
  }
}
