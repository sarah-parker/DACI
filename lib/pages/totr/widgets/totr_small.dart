import 'package:daci/constants/text.dart';
import 'package:daci/helpers/file_helpers.dart';
import 'package:daci/models/button_data.dart';
import 'package:daci/widgets/schedule_and_entry.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:seo_renderer/seo_renderer.dart';

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
            ButtonData(
                label: 'Download Schedule',
                goToRoute: () {
                  downloadFile("assets/pdf/Totr22-Schedule.pdf", "TOTR22-Schedule.pdf");
                }),
            ButtonData(
                label: 'Enter TOTR',
                goToRoute: () {
                  context.goNamed('totrentry');
                }),
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
