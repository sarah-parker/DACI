import 'package:daci/theme/theme.dart';
import 'package:daci/widgets/button_data.dart';
import 'package:daci/widgets/app_bar.dart' as custom;
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
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: custom.AppBar(
            appTitle: 'Downs Arabian Club Inc.',
            buttonDataList: [
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
                    context.vRouter.to('/committee');
                  },
                  index: 3),
              ButtonData(
                  label: 'Results',
                  goToRoute: () {
                    context.vRouter.to('/committee');
                  },
                  index: 4),
            ],
          ),
        ),
        body: widget.child,
      ),
    );
  }
}
