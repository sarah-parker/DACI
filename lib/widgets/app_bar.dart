import 'package:daci/constants/text.dart';
import 'package:daci/models/button_data.dart';
import 'package:daci/widgets/screen_size.dart';
import 'package:flutter/material.dart' as material;
import 'package:flutter/material.dart';
import 'package:seo_renderer/seo_renderer.dart';

class AppBar extends StatefulWidget {
  final double maxWidthSize;
  final String appTitle;
  final AssetImage? appLogo;
  final List<ButtonData> buttonDataList;

  const AppBar(
      {this.maxWidthSize = 0.0,
      required this.appTitle,
      required this.buttonDataList,
      this.appLogo,
      key})
      : super(key: key);

  @override
  State<AppBar> createState() => _AppBarState();
}

class _AppBarState extends State<AppBar> {
  List showMenuBorder = [false, false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return material.AppBar(
      iconTheme: Theme.of(context).iconTheme,
      elevation: 0,
      centerTitle: true,
      title: Row(
        children: [
          TextButton(
            onPressed: () {
              widget.buttonDataList[0].goToRoute();
            },
            child: ScreenSizeWidget.isSmallScreen(context)
                ? Transform.translate(
                    offset: const Offset(-30.0, 0.0),
                    child: TextRenderer(
                      child: Text(appTitle,
                          style: Theme.of(context).textTheme.headline6),
                    ),
                  )
                : TextRenderer(
                    child: Text(appTitle,
                        style: Theme.of(context).textTheme.headline1)),
          ),
          !ScreenSizeWidget.isSmallScreen(context)
              ? Container(
                  height: 80,
                  padding: const EdgeInsets.only(left: 8.0),
                  child: VerticalDivider(
                    color: Theme.of(context).backgroundColor,
                  ))
              : Container(),
          !ScreenSizeWidget.isSmallScreen(context)
              ? Row(children: _generateRowElements())
              : Container()
        ],
      ),
    );
  }

  List<Widget> _generateRowElements() {
    List<Widget> buttons = [];
    for (var button in widget.buttonDataList) {
      buttons.add(Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: DecoratedBox(
          decoration: BoxDecoration(
              color: Theme.of(context).appBarTheme.backgroundColor,
              border: showMenuBorder[button.index!]
                  ? Border(
                      bottom: BorderSide(
                          color: Theme.of(context).backgroundColor, width: 2),
                    )
                  : null),
          child: InkWell(
            onTap: (() {}),
            onHover: (hovered) {
              setState(() {
                showMenuBorder[button.index!] = hovered;
              });
            },
            child: TextButton(
              onPressed: () {
                button.goToRoute();
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
      ));
    }
    return buttons;
  }
}
