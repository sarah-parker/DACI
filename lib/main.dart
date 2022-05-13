import 'package:daci/app.dart';
import 'package:daci/pages/committee/committee.dart';
import 'package:daci/pages/home/home.dart';
import 'package:flutter/material.dart';
import 'package:vrouter/vrouter.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  // debugPaintSizeEnabled = true;
  runApp(RoutedApp());
}

class RoutedApp extends StatelessWidget {
  RoutedApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VRouter(
      debugShowCheckedModeBanner: false,
      mode: VRouterMode.history,
      routes: [
        VNester(
          path: '/',
          widgetBuilder: (child) =>
              App(child: child), // Child is the widget from nestedRoutes
          nestedRoutes: [
            VWidget(path: null, widget: const Home()),
            VWidget(path: '/committee', widget: const Committee()),
            VWidget(path: '/schedules', widget: const Home()),
            VNester(
              path: '/shows',
              widgetBuilder: (child) => const Home(),
              nestedRoutes: [
                VWidget(
                  path: 'enter',
                  widget: const Home(),
                ),
              ],
            ), // child will take the value of the widget in nestedRoutes)
            VNester(
              path: '/results',
              widgetBuilder: (child) => const Home(),
              nestedRoutes: [
                VWidget(
                  path: 'enter',
                  widget: const Home(),
                ),
              ],
            ), // child will take the value of the widget in nestedRoutes)
          ],
        ),
      ],
    );
  }
}
