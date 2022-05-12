import 'package:daci/app.dart';
import 'package:daci/pages/committee.dart';
import 'package:daci/pages/home/home.dart';
import 'package:daci/pages/shows.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
            VWidget(path: '/committee', widget: Committee()),
            VWidget(path: '/schedules', widget: Home()),
            VNester(
              path: '/shows',
              widgetBuilder: (child) => Home(),
              nestedRoutes: [
                VWidget(
                  path: 'enter',
                  widget: Home(),
                ),
              ],
            ), // child will take the value of the widget in nestedRoutes)
            VNester(
              path: '/results',
              widgetBuilder: (child) => Home(),
              nestedRoutes: [
                VWidget(
                  path: 'enter',
                  widget: Home(),
                ),
              ],
            ), // child will take the value of the widget in nestedRoutes)
          ],
        ),
      ],
    );
  }
}
