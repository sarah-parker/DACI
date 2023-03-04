import 'package:daci/pages/404/404.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:seo_renderer/seo_renderer.dart';

import 'package:daci/app.dart';
import 'package:daci/pages/committee/committee.dart';
import 'package:daci/pages/home/home.dart';
import 'package:daci/pages/hoty/hoty.dart';
import 'package:daci/pages/totr/totr.dart';
import 'package:daci/pages/younp/younp.dart';
import 'package:daci/theme/theme.dart';

void main() {
  // debugPaintSizeEnabled = true;
  // setPathUrlStrategy();
  runApp(RobotDetector(child: RoutedApp()));
}

class RoutedApp extends StatelessWidget {
  RoutedApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        routeInformationParser: _router.routeInformationParser,
        routeInformationProvider: _router.routeInformationProvider,
        routerDelegate: _router.routerDelegate,
        debugShowCheckedModeBanner: true,
        title: 'Downs Arabian Club Inc',
        theme: daciTheme,
      );

  final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
          path: '/',
          name: 'home',
          builder: (BuildContext context, GoRouterState state) => App(child: const Home()),
          routes: [
            GoRoute(
              path: 'committee',
              name: 'committee',
              builder: (BuildContext context, GoRouterState state) => App(child: const Committee()),
            ),
            GoRoute(
              path: 'younp',
              name: 'younp',
              builder: (BuildContext context, GoRouterState state) => App(child: const Younp()),
            ),
            GoRoute(
              path: 'younp/enter',
              name: 'younpentry',
              redirect: (BuildContext context, GoRouterState state) => "/younp",
              builder: (BuildContext context, GoRouterState state) => App(child: const Younp()),
            ),
            GoRoute(
              path: 'totr',
              name: 'totr',
              builder: (BuildContext context, GoRouterState state) => App(child: const Totr()),
            ),
            GoRoute(
              path: 'totr/enter',
              name: 'totrentry',
              redirect: (BuildContext context, GoRouterState state) => "/totr",
              // builder: (BuildContext context, GoRouterState state) => App(child: const Totr()),
            ),
            // GoRoute(
            //   path: 'totr/enter',
            //   name: 'totrentry',
            //   builder: (BuildContext context, GoRouterState state) => App(
            //       child: const EntryForm(
            //           source: 'https://www.cognitoforms.com/f/4WNFz3iZ20isTwHw4lSfDQ/3')),
            // ),
            GoRoute(
              path: 'hoty',
              name: 'hoty',
              builder: (BuildContext context, GoRouterState state) => App(child: const Hoty()),
            ),
            GoRoute(
              path: 'hoty/enter',
              name: 'hotyentry',
              redirect: (BuildContext context, GoRouterState state) => "/hoty",
              // builder: (BuildContext context, GoRouterState state) => App(child: const Hoty()),
            ),

            // GoRoute(
            //   path: 'hoty/enter',
            //   name: 'hotyentry',
            //   builder: (BuildContext context, GoRouterState state) => App(
            //       child: const EntryForm(
            //           source: 'https://www.cognitoforms.com/f/4WNFz3iZ20isTwHw4lSfDQ/2')),
            // ),
            GoRoute(
              path: 'raffle',
              name: 'raffle',
              builder: (BuildContext context, GoRouterState state) => App(child: const Home()),
            ),
            GoRoute(
              path: 'error',
              name: 'error',
              builder: (BuildContext context, GoRouterState state) => App(child: const NotFound()),
            ),
          ]),
    ],
    errorBuilder: (context, error) => App(child: const NotFound()),
  );
}
