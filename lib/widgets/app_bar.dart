import 'package:daci/constants/text.dart';
import 'package:daci/widgets/button_data.dart';
import 'package:daci/widgets/screen_size.dart';
import 'package:flutter/material.dart' as material;
import 'package:flutter/material.dart';
import 'package:vrouter/vrouter.dart';

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
  List showMenuBorder = [false, false, false, false, false];
  List showSubmenuBorder = [false, false, false];

  @override
  Widget build(BuildContext context) {
    final List<ButtonData> subMenuList = [
      ButtonData(
          label: 'YouNP',
          goToRoute: () {
            context.vRouter.to('/younp');
          },
          index: 0),
      ButtonData(
          label: 'TOTR',
          goToRoute: () {
            context.vRouter.to('/totr');
          },
          index: 0),
      ButtonData(
          label: 'HOTY',
          goToRoute: () {
            context.vRouter.to('/hoty');
          },
          index: 0),
    ];

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
            child: Text(appTitle, style: Theme.of(context).textTheme.headline1),
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
              ? Row(children: _generateRowElements(subMenuList))
              : Container()
        ],
      ),
    );
  }

  List<Widget> _generateRowElements(subMenuList) {
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
            child: button.label == 'Shows'
                ? _generateSubMenu(subMenuList, button)
                : TextButton(
                    onPressed: () {
                      button.goToRoute();
                    },
                    child: Text(
                      button.label,
                      style: Theme.of(context).appBarTheme.titleTextStyle,
                    ),
                  ),
          ),
        ),
      ));
    }
    return buttons;
  }

  Widget _generateSubMenu(List<ButtonData> submenu, ButtonData parentButton) {
    return PopupMenuButton(
        offset: const Offset(0, 20),
        itemBuilder: ((context) => [
              for (var item in submenu)
                PopupMenuItem(
                    child: DecoratedBox(
                  decoration: BoxDecoration(
                      color: Theme.of(context).appBarTheme.backgroundColor,
                      border: showSubmenuBorder[item.index!]
                          ? Border(
                              bottom: BorderSide(
                                  color: Theme.of(context).backgroundColor,
                                  width: 2),
                            )
                          : null),
                  child: InkWell(
                    onTap: (() {
                      item.goToRoute();
                    }),
                    onHover: (hovered) {
                      setState(() {
                        showSubmenuBorder[item.index!] = hovered;
                      });
                    },
                    child: Text(item.label,
                        style: Theme.of(context).appBarTheme.titleTextStyle),
                  ),
                )),
            ]),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Text(parentButton.label,
              style: Theme.of(context).appBarTheme.titleTextStyle),
        ));
  }
}
