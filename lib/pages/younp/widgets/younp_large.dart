import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:seo_renderer/seo_renderer.dart';

import 'package:daci/constants/text.dart';
import 'package:daci/helpers/file_helpers.dart';
import 'package:daci/models/button_data.dart';
import 'package:daci/widgets/schedule_and_entry.dart';
import 'package:url_launcher/url_launcher.dart';

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
              title: 'YouNP 2023 Resources',
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
                //       // context.goNamed('younpentry');
                //       Uri uri = Uri.parse(
                //           'https://www.cognitoforms.com/DownsArabianClubInc/YouNP23Nomination');
                //       if (await canLaunchUrl(uri)) {
                //         await launchUrl(uri);
                //       } else {
                //         context.goNamed('younpentry');
                //       }
                //     }),
              ],
            ),
          ],
        )
      ],
    );
  }
}
