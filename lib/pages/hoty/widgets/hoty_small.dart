import 'package:flutter/material.dart';
import 'package:seo_renderer/seo_renderer.dart';

import 'package:daci/constants/text.dart';
import 'package:daci/helpers/file_helpers.dart';
import 'package:daci/models/button_data.dart';
import 'package:daci/widgets/schedule_and_entry.dart';

class HotySmall extends StatelessWidget {
  final Size screenSize;

  const HotySmall({Key? key, required this.screenSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ScheduleAndEntry(
          screenSize: screenSize,
          title: 'HOTY 2022 Resources',
          optionsList: [
            // ButtonData(
            //     label: 'Enter HOTY',
            //     goToRoute: () async {
            //       Uri uri = Uri.parse('https://www.cognitoforms.com/f/4WNFz3iZ20isTwHw4lSfDQ/2');
            //       if (await canLaunchUrl(uri)) {
            //         await launchUrl(uri);
            //       } else {
            //         context.goNamed('hotyentry');
            //       }
            //     }),
            ButtonData(
                label: 'Download 2023 Schedule',
                goToRoute: () {
                  downloadFile("assets/pdf/HOTY_Schedule_2023.pdf",
                      "HOTY_Schedule_2023.pdf");
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
