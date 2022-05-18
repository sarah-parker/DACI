import 'package:daci/constants/text.dart';
import 'package:daci/theme/theme.dart';
import 'package:daci/widgets/button_data.dart';
import 'package:daci/widgets/app_bar.dart' as custom;
import 'package:daci/widgets/drawer.dart';
import 'package:daci/widgets/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:vrouter/vrouter.dart';

class App extends StatefulWidget {
  final Widget child;

  const App({Key? key, required this.child}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return VMaterialApp(
      theme: daciTheme,
      child: Scaffold(
        drawer: ScreenSizeWidget.isSmallScreen(context)
            ? DaciDrawer(
                buttonDataList: _getButtonList(),
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
            context.vRouter.to('/');
          },
          index: 0),
      ButtonData(
          label: 'Committee',
          goToRoute: () {
            context.vRouter.to('/committee');
          },
          index: 1),
      ButtonData(
          label: 'Schedules',
          goToRoute: () {
            context.vRouter.to('/committee');
          },
          index: 2),
      ButtonData(
          label: 'Shows',
          goToRoute: () {
            // context.vRouter.to('/committee');
          },
          index: 3),
      ButtonData(
          label: 'Results',
          goToRoute: () {
            context.vRouter.to('/committee');
          },
          index: 4)
    ];
  }
}
