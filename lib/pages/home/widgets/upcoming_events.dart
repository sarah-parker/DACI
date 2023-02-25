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
      ButtonData(
          label: "Annual General Meeting",
          goToRoute: () async {
            Uri uri = Uri.parse('https://fb.me/e/41ONNTXmH');
            if (await canLaunchUrl(uri)) {
              await launchUrl(uri);
            }
          }),
      ButtonData(
          label: 'Youth & Non- Professional Show - 30 July 2023',
          goToRoute: () {
            context.goNamed('younp');
          }),
      // ButtonData(
      //     label: '> Enter YouNP <',
      //     goToRoute: () {
      //       context.goNamed('younpentry');
      //     }),
      ButtonData(
          label: 'Top Of The Range Show - 22-23 October 2023',
          goToRoute: () {
            context.goNamed('totr');
          }),
      // ButtonData(
      //     label: '[Enter TOTR]',
      //     goToRoute: () async {
      //       Uri uri = Uri.parse('https://www.cognitoforms.com/f/4WNFz3iZ20isTwHw4lSfDQ/3');
      //       if (await canLaunchUrl(uri)) {
      //         await launchUrl(uri);
      //       } else {
      //         context.goNamed('totrentry');
      //       }
      //     }),
      ButtonData(
          label: 'Horse Of The Year Show - 22-23 October 2023',
          goToRoute: () {
            context.goNamed('hoty');
          }),
      // ButtonData(
      //     label: '[Enter HOTY]',
      //     goToRoute: () async {
      //       Uri uri = Uri.parse('https://www.cognitoforms.com/f/4WNFz3iZ20isTwHw4lSfDQ/2');
      //       if (await canLaunchUrl(uri)) {
      //         await launchUrl(uri);
      //       } else {
      //         context.goNamed('hotyentry');
      //       }
      //     }),
    ];
    return ConstrainedBox(
      constraints: BoxConstraints(
          maxWidth:
              ScreenSizeWidget.isSmallScreen(context) ? screenSize.width : screenSize.width * .3,
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
              InkWell(
                onTap: (() {}),
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
          ],
        ),
      ),
    );
  }
}
