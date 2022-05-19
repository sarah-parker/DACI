import 'package:daci/widgets/button_data.dart';
import 'package:daci/widgets/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:vrouter/vrouter.dart';

class UpcomingEvents extends StatelessWidget {
  final Size screenSize;
  const UpcomingEvents({Key? key, required this.screenSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ButtonData> eventsList = [
      ButtonData(
          label: 'Gatton Show - 16 July 2022',
          goToRoute: () {
            // context.vRouter.to('/');
          }),
      ButtonData(
          label: 'Youth & Non- Professional Show - 24 July 2022',
          goToRoute: () {
            context.vRouter.to('/younp');
          }),
      ButtonData(
          label: 'Top Of The Range Show - 22-23 October 2022',
          goToRoute: () {
            context.vRouter.to('/totr');
          }),
      ButtonData(
          label: 'Horse Of The Year Show - 22-23 October 2022',
          goToRoute: () {
            context.vRouter.to('/hoty');
          })
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
              child: Text(
                'Upcoming Events',
                style: Theme.of(context).textTheme.headline3,
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
                  child: Text(
                    button.label,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
