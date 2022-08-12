import 'package:daci/constants/text.dart';
import 'package:daci/helpers/file_helpers.dart';
import 'package:daci/models/button_data.dart';
import 'package:daci/widgets/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:seo_renderer/seo_renderer.dart';

class ScheduleAndEntry extends StatelessWidget {
  final Size screenSize;

  const ScheduleAndEntry({Key? key, required this.screenSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ButtonData> eventsList = [
      ButtonData(
          label: 'Download Schedule',
          goToRoute: () {
            downloadFile("assets/pdf/YouNP22-Schedule.pdf", "YouNP22-Schedule.pdf");
          }),
      // ButtonData(
      //     label: 'Enter YouNP',
      //     goToRoute: () {
      //       context.goNamed('younpentry');
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
                  'YouNP 2022 Resources',
                  style: Theme.of(context).textTheme.headline3,
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
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ),
                ),
              ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: screenSize.height * 0.01),
              child: TextRenderer(
                child: Text(
                  contactInfo,
                  style: Theme.of(context).textTheme.bodyText2,
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
