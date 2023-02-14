import 'package:daci/constants/text.dart';
import 'package:daci/models/button_data.dart';
import 'package:flutter/material.dart';
import 'package:seo_renderer/seo_renderer.dart';

class DaciDrawer extends StatefulWidget {
  final List<ButtonData> buttonDataList;
  final GlobalKey<ScaffoldState> scaffoldKey;

  const DaciDrawer({Key? key, required this.buttonDataList, required this.scaffoldKey})
      : super(key: key);

  @override
  State<DaciDrawer> createState() => _DaciDrawerState();
}

class _DaciDrawerState extends State<DaciDrawer> {
  List showBorder = [false, false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextRenderer(
            child: Text(
              appTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
          ),
        ),
        for (var button in widget.buttonDataList)
          DecoratedBox(
            decoration: BoxDecoration(
                color: Theme.of(context).appBarTheme.backgroundColor,
                border: showBorder[button.index!]
                    ? Border(
                        bottom:
                            BorderSide(color: Theme.of(context).colorScheme.background, width: 2),
                      )
                    : null),
            child: InkWell(
              onTap: (() {}),
              onHover: (hovered) {
                setState(() {
                  showBorder[button.index!] = hovered;
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextButton(
                  onPressed: () {
                    button.goToRoute();
                    widget.scaffoldKey.currentState?.closeDrawer();
                  },
                  child: TextRenderer(
                    child: Text(
                      button.label,
                      style: Theme.of(context).appBarTheme.titleTextStyle,
                    ),
                  ),
                ),
              ),
            ),
          ),
      ],
    ));
  }
}
