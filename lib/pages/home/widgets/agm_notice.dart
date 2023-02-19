import 'package:daci/widgets/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:seo_renderer/seo_renderer.dart';
import 'package:url_launcher/url_launcher.dart';

class AgmNotice extends StatelessWidget {
  final Size screenSize;
  const AgmNotice({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  'Interested in having your say and joining the committee?',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ),
            Divider(
              color: Theme.of(context).appBarTheme.backgroundColor,
              indent: screenSize.width * .03,
              endIndent: screenSize.width * .03,
            ),
            Padding(
              padding: EdgeInsets.all(screenSize.height * 0.01),
              child: const TextRenderer(
                child: Text(
                  "Join us for our Annual General Meeting",
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(screenSize.height * 0.01),
              child: const TextRenderer(
                child: Text(
                  "Date: Sunday, 12th March 2023\n"
                  "Time: 9am\n"
                  "Location: Porters Plainland\n",
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            InkWell(
              onTap: (() {}),
              child: TextButton(
                onPressed: () async {
                  Uri uri = Uri.parse('https://fb.me/e/41ONNTXmH');
                  if (await canLaunchUrl(uri)) {
                    await launchUrl(uri);
                  }
                },
                child: TextRenderer(
                  child: Text(
                    'Click for Facebook event details',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
