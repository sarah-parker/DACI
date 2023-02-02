import 'package:daci/constants/text.dart';
import 'package:daci/helpers/file_helpers.dart';
import 'package:daci/models/button_data.dart';
import 'package:daci/widgets/schedule_and_entry.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:seo_renderer/seo_renderer.dart';
import 'package:url_launcher/url_launcher.dart';

class TotrSmall extends StatelessWidget {
  final Size screenSize;

  const TotrSmall({Key? key, required this.screenSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ScheduleAndEntry(
          screenSize: screenSize,
          title: 'TOTR 2022 Resources',
          optionsList: [
            // ButtonData(
            //     label: 'Enter TOTR',
            //     goToRoute: () async {
            //       Uri uri = Uri.parse('https://www.cognitoforms.com/f/4WNFz3iZ20isTwHw4lSfDQ/3');
            //       if (await canLaunchUrl(uri)) {
            //         await launchUrl(uri);
            //       } else {
            //         context.goNamed('totrentry');
            //       }
            //     }),
            ButtonData(
                label: 'Download 2022 Schedule',
                goToRoute: () {
                  downloadFile("assets/pdf/2022-Top-of-the-Range-Schedule.pdf",
                      "2022-Top-of-the-Range-Schedule.pdf");
                }),
            // ButtonData(
            //     label: 'Download Horse Health Declaration',
            //     goToRoute: () {
            //       downloadFile("assets/pdf/Horse_Health_Dec.pdf", "Horse-Health-Declaration.pdf");
            //     }),
            // ButtonData(
            //     label: 'Download Non-Pro Declaration',
            //     goToRoute: () {
            //       downloadFile(
            //           "assets/pdf/Non_Pro_declaration.pdf", "Non-Professional-Declaration");
            //     }),
          ],
        ),
        Padding(padding: EdgeInsets.symmetric(vertical: screenSize.height * .01)),
        const TextRenderer(
          child: Text(
            totrText,
            textAlign: TextAlign.justify,
          ),
        ),
      ],
    );
  }
}
