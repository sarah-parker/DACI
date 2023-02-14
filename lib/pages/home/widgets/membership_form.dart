import 'package:flutter/material.dart';
import 'package:seo_renderer/seo_renderer.dart';

import 'package:daci/constants/text.dart';
import 'package:daci/helpers/file_helpers.dart';
import 'package:daci/widgets/screen_size.dart';

class MembershipForm extends StatelessWidget {
  final Size screenSize;

  const MembershipForm({Key? key, required this.screenSize}) : super(key: key);

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
                  'Join the club',
                  style: Theme.of(context).textTheme.displaySmall,
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
                  membershipText,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            InkWell(
              onTap: (() {}),
              child: TextButton(
                onPressed: () {
                  downloadFile('assets/pdf/Membership-Form-2021.pdf', 'DACMembershipform2021.pdf');
                },
                child: TextRenderer(
                  child: Text(
                    'Download Membership Form',
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
