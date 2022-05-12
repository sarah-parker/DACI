import 'package:daci/widgets/button_data.dart';
import 'package:flutter/material.dart' as material;
import 'package:flutter/material.dart';

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
  List showBorder = [false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return material.AppBar(
      elevation: 0,
      centerTitle: true,
      title: Row(
        children: [
          TextButton(
            onPressed: () {
              widget.buttonDataList[0].goToRoute();
            },
            child: Text('Downs Arabian Club Inc.',
                style: Theme.of(context).textTheme.headline1),
          ),
          Container(
              height: 80,
              padding: const EdgeInsets.only(left: 8.0),
              child: VerticalDivider(
                color: Theme.of(context).backgroundColor,
              )),
          for (var button in widget.buttonDataList)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: DecoratedBox(
                decoration: BoxDecoration(
                    color: Theme.of(context).appBarTheme.backgroundColor,
                    border: showBorder[button.index]
                        ? Border(
                            bottom: BorderSide(
                                color: Theme.of(context).backgroundColor,
                                width: 2),
                          )
                        : null),
                child: InkWell(
                  onTap: (() {}),
                  onHover: (hovered) {
                    setState(() {
                      showBorder[button.index] = hovered;
                    });
                  },
                  child: TextButton(
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
            ),
        ],
      ),
    );
  }
}
