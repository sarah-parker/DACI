import 'package:daci/app.dart';
import 'package:daci/pages/committee/committee.dart';
import 'package:daci/pages/home/home.dart';
import 'package:daci/pages/hoty/hoty.dart';
import 'package:daci/pages/totr/totr.dart';
import 'package:daci/pages/younp/entry.dart';
import 'package:daci/pages/younp/younp.dart';
import 'package:daci/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:seo_renderer/seo_renderer.dart';

void main() {
  // debugPaintSizeEnabled = true;
  runApp(RobotDetector(child: RoutedApp()));
}

class RoutedApp extends StatelessWidget {
  RoutedApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        routeInformationParser: _router.routeInformationParser,
        routerDelegate: _router.routerDelegate,
        debugShowCheckedModeBanner: false,
        title: 'Downs Arabian Club Inc',
        theme: daciTheme,
      );

  final GoRouter _router = GoRouter(
    urlPathStrategy: UrlPathStrategy.path,
    routes: <GoRoute>[
      GoRoute(
          path: '/',
          name: 'home',
          builder: (BuildContext context, GoRouterState state) =>
              App(child: const Home()),
          routes: [
            GoRoute(
              path: 'committee',
              name: 'committee',
              builder: (BuildContext context, GoRouterState state) =>
                  App(child: const Committee()),
            ),
            GoRoute(
              path: 'younp',
              name: 'younp',
              builder: (BuildContext context, GoRouterState state) =>
                  App(child: const Younp()),
            ),
            GoRoute(
              path: 'younp/enter',
              name: 'younpentry',
              builder: (BuildContext context, GoRouterState state) =>
                  App(child: YounpEntry()),
            ),
            GoRoute(
              path: 'totr',
              name: 'totr',
              builder: (BuildContext context, GoRouterState state) =>
                  App(child: const Totr()),
            ),
            GoRoute(
              path: 'hoty',
              name: 'hoty',
              builder: (BuildContext context, GoRouterState state) =>
                  App(child: const Hoty()),
            ),
          ]),
    ],
    errorBuilder: (context, error) => App(child: const Home()),
  );
}
