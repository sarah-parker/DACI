import 'package:daci/widgets/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:vrouter/vrouter.dart';

class UpcomingEvents extends StatelessWidget {
  final Size screenSize;
  const UpcomingEvents({Key? key, required this.screenSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
          maxWidth: ScreenSizeWidget.isSmallScreen(context)
              ? screenSize.width
              : screenSize.width * .3,
          minWidth: screenSize.width * .3),
      child: Container(
        color: Theme.of(context).hoverColor,
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
            InkWell(
              onTap: (() {}),
              child: TextButton(
                onPressed: () {
                  context.vRouter.to('/committee');
                },
                child: Text(
                  'Gatton Show - 16 July 2022',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ),
            InkWell(
              onTap: (() {}),
              child: TextButton(
                onPressed: () {
                  context.vRouter.to('/committee');
                },
                child: Text(
                  'Youth & Non- Professional Show - 24 July 2022',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ),
            InkWell(
              onTap: (() {}),
              child: TextButton(
                onPressed: () {
                  context.vRouter.to('/committee');
                },
                child: Text(
                  'Top Of The Range Show - 12 & 13 November 2022',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ),
            InkWell(
              onTap: (() {}),
              child: TextButton(
                onPressed: () {
                  context.vRouter.to('/committee');
                },
                child: Text(
                  'Horse Of The Year Show - 12 & 13 November 2022',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
