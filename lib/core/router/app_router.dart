import 'package:flutter_application_examen1_programovil/presentacion/pages/home_page/home_page.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (context, GoRouterState state) {
        return const HomePage();
      }
    ),
  ],
);