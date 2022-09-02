import 'package:daci/constants/text.dart';
import 'package:daci/helpers/file_helpers.dart';
import 'package:daci/models/button_data.dart';
import 'package:daci/widgets/schedule_and_entry.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:seo_renderer/seo_renderer.dart';

class HotySmall extends StatelessWidget {
  final Size screenSize;

  const HotySmall({Key? key, required this.screenSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ScheduleAndEntry(
          screenSize: screenSize,
          title: 'HOTY 2022 Resources',
          optionsList: [
            ButtonData(
                label: 'Download Schedule',
                goToRoute: () {
                  downloadFile("assets/pdf/Hoty22-Schedule.pdf", "HOTY22-Schedule.pdf");
                }),
            ButtonData(
                label: 'Enter HOTY',
                goToRoute: () {
                  context.goNamed('hotyentry');
                }),
          ],
        ),
        Padding(padding: EdgeInsets.symmetric(vertical: screenSize.height * .01)),
        const TextRenderer(
          child: Text(
            hotyText,
            textAlign: TextAlign.justify,
          ),
        ),
      ],
    );
  }
}
