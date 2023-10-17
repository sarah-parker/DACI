import 'package:daci/helpers/file_helpers.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:seo_renderer/seo_renderer.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:daci/models/button_data.dart';
import 'package:daci/widgets/screen_size.dart';

class UpcomingEvents extends StatelessWidget {
  final Size screenSize;
  const UpcomingEvents({Key? key, required this.screenSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ButtonData> eventsList = [
      // ButtonData(
      //     label: 'Gatton Show - 16 July 2022',
      //     goToRoute: () {
      //       downloadFile(
      //           "assets/pdf/Gatton-Show-Arabian-Horse-Feature-Show-Schedule.pdf",
      //           "Gatton-Show-Arabian-Horse-Feature-Show-Schedule.pdf");
      //     }),

      // ButtonData(
      //     label: 'Youth & Non- Professional Show - 30 July 2023',
      //     goToRoute: () {
      //       context.goNamed('younp');
      //     }),
      // ButtonData(
      //     label: 'Download YouNP23 Schedule',
      //     goToRoute: () {
      //       downloadFile(
      //           "assets/pdf/YouNP23-Schedule.pdf", "YouNP23-Schedule.pdf");
      //     }),
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
      ButtonData(
          label: 'Top Of The Range Show - 21-22 October 2023',
          goToRoute: () {
            context.goNamed('totr');
          }),
      ButtonData(
          label: 'Download TOTR Schedule',
          goToRoute: () {
            downloadFile("assets/pdf/2023-Top-of-the-Range-Schedule.pdf",
                "2023-Top-of-the-Range-Schedule.pdf");
          }),
      // ButtonData(
      //     label: 'Download TOTR Sponsorship Opportunities',
      //     goToRoute: () {
      //       downloadFile("assets/pdf/TOTR_Sponsorship_Opportunities.pdf",
      //           "TOTR_Sponsorship_Opportunities.pdf");
      //     }),

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
          label: 'Horse Of The Year Show - 21-22 October 2023',
          goToRoute: () {
            context.goNamed('hoty');
          }),
      ButtonData(
          label: 'Download HOTY Schedule',
          goToRoute: () {
            downloadFile(
                "assets/pdf/HOTY_Schedule_2023.pdf", "HOTY_Schedule_2023.pdf");
          }),
      // ButtonData(
      //     label: 'Download HOTY Sponsorship Opportunities',
      //     goToRoute: () {
      //       downloadFile("assets/pdf/HOTY_Sponsorship_Opportunities.pdf",
      //           "HOTY_Sponsorship_Opportunities.pdf");
      //     }),

      // ButtonData(
      //     label: 'Enter HOTY',
      //     goToRoute: () async {
      //       Uri uri = Uri.parse(
      //           'https://www.cognitoforms.com/DownsArabianClubInc/HOTY23Nomination');
      //       if (await canLaunchUrl(uri)) {
      //         await launchUrl(uri);
      //       }
      //     }),
    ];
    return ConstrainedBox(
      constraints: BoxConstraints(
          maxWidth: ScreenSizeWidget.isSmallScreen(context)
              ? screenSize.width
              : screenSize.width * .3,
          minWidth: screenSize.width * .3),
      child: Container(
        color: Theme.of(context).primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(top: screenSize.height * 0.01),
              child: TextRenderer(
                child: Text(
                  'Upcoming Events',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ),
            ),
            Divider(
              color: Theme.of(context).appBarTheme.backgroundColor,
              indent: screenSize.width * .03,
              endIndent: screenSize.width * .03,
            ),
            for (var button in eventsList)
              button.label.contains(RegExp("Enter|Download"))
                  ? Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: button.label.contains(RegExp("Enter"))
                            ? ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.red[900]),
                                onPressed: () {
                                  button.goToRoute();
                                },
                                child: Text(button.label))
                            : ElevatedButton(
                                onPressed: () {
                                  button.goToRoute();
                                },
                                child: Text(button.label)),
                      ),
                    )
                  : InkWell(
                      onTap: (() {}),
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: TextButton(
                          onPressed: () {
                            button.goToRoute();
                          },
                          child: TextRenderer(
                            child: Text(
                              button.label,
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ),
                        ),
                      ),
                    ),
          ],
        ),
      ),
    );
  }
}
