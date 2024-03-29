import 'package:flutter/material.dart';
import 'package:seo_renderer/seo_renderer.dart';

import 'package:daci/constants/text.dart';
import 'package:daci/helpers/file_helpers.dart';
import 'package:daci/models/button_data.dart';
import 'package:daci/widgets/schedule_and_entry.dart';
import 'package:url_launcher/url_launcher.dart';

class TotrLarge extends StatelessWidget {
  final Size screenSize;

  const TotrLarge({Key? key, required this.screenSize}) : super(key: key);

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
                    totrText,
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
              title: 'TOTR 2022 Resources',
              optionsList: [
                // ButtonData(
                //     label: 'Enter TOTR',
                //     goToRoute: () async {
                //       Uri uri = Uri.parse(
                //           'https://www.cognitoforms.com/DownsArabianClubInc/TOTR23Nomination');
                //       if (await canLaunchUrl(uri)) {
                //         await launchUrl(uri);
                //       }
                //     }),
                ButtonData(
                    label: 'Download 2023 Schedule',
                    goToRoute: () {
                      downloadFile(
                          "assets/pdf/2023-Top-of-the-Range-Schedule.pdf",
                          "2023-Top-of-the-Range-Schedule.pdf");
                    }),
                ButtonData(
                    label: 'Download Non-Pro Declaration',
                    goToRoute: () {
                      downloadFile("assets/pdf/Non_Pro_declaration.pdf",
                          "Non-Professional-Declaration");
                    }),
                ButtonData(
                    label: 'Download Horse Health Declaration',
                    goToRoute: () {
                      downloadFile("assets/pdf/Horse_Health_Dec.pdf",
                          "Horse-Health-Declaration.pdf");
                    }),
                // ButtonData(
                //     label: 'Download Sponsorship Opportunities',
                //     goToRoute: () {
                //       downloadFile(
                //           "assets/pdf/TOTR_Sponsorship_Opportunities.pdf",
                //           "TOTR_Sponsorship_Opportunities.pdf");
                //     }),
              ],
            ),
          ],
        )
      ],
    );
  }
}
