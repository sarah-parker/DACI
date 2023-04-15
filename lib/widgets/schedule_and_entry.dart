import 'package:daci/constants/text.dart';
import 'package:daci/models/button_data.dart';
import 'package:daci/widgets/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:seo_renderer/seo_renderer.dart';

class ScheduleAndEntry extends StatelessWidget {
  final Size screenSize;
  final List<ButtonData> optionsList;
  final String title;

  const ScheduleAndEntry(
      {Key? key,
      required this.screenSize,
      required this.optionsList,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  title,
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ),
            ),
            Divider(
              color: Theme.of(context).appBarTheme.backgroundColor,
              indent: screenSize.width * .03,
              endIndent: screenSize.width * .03,
            ),
            for (var button in optionsList)
              button.label.contains(RegExp("Enter|Download"))
                  ? Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: () {
                            button.goToRoute();
                          },
                          child: Text(button.label)),
                    )
                  : InkWell(
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
            Padding(
              padding: EdgeInsets.symmetric(vertical: screenSize.height * 0.01),
              child: TextRenderer(
                child: Text(
                  contactInfo,
                  style: Theme.of(context).textTheme.bodyMedium,
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
