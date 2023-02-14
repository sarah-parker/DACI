import 'package:daci/constants/text.dart';
import 'package:daci/models/button_data.dart';
import 'package:daci/widgets/app_bar.dart' as custom;
import 'package:daci/widgets/drawer.dart';
import 'package:daci/widgets/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class App extends StatefulWidget {
  final Widget child;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  App({Key? key, required this.child}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Scaffold(
        key: widget.scaffoldKey,
        drawer: ScreenSizeWidget.isSmallScreen(context)
            ? DaciDrawer(
                buttonDataList: _getButtonList(),
                scaffoldKey: widget.scaffoldKey,
              )
            : null,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: custom.AppBar(
            appTitle: appTitle,
            buttonDataList: _getButtonList(),
          ),
        ),
        body: widget.child,
      ),
    );
  }

  _getButtonList() {
    return [
      ButtonData(
          label: 'Home',
          goToRoute: () {
            context.goNamed('home');
          },
          index: 0),
      ButtonData(
          label: 'Committee',
          goToRoute: () {
            context.goNamed('committee');
          },
          index: 1),
      ButtonData(
          label: 'YouNP',
          goToRoute: () {
            context.goNamed('younp');
          },
          index: 2),
      ButtonData(
          label: 'TOTR',
          goToRoute: () {
            context.goNamed('totr');
          },
          index: 3),
      ButtonData(
          label: 'HOTY',
          goToRoute: () {
            context.goNamed('hoty');
          },
          index: 4),
    ];
  }
}
