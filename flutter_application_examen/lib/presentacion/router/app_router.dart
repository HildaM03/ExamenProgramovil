
import 'package:flutter/material.dart';
import 'package:flutter_application_examen/screens/home.dart';

import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const Home();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'about',
          builder: (BuildContext context, GoRouterState state) {
            return const ();
          },
        ),
      ],
    ),
  ],
);