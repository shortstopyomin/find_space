import 'dart:typed_data';

import 'package:find_space/space/router/route_constants.dart';
import 'package:find_space/space/ui/space_list_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// Create keys for `root` & `space` navigator avoiding unnecessary rebuilds
final _rootNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: RoutePath.spaces,
  debugLogDiagnostics: true,
  routes: <RouteBase>[
    GoRoute(
      path: RoutePath.spaces,
      name: RouteName.spaces,
      builder: (BuildContext context, GoRouterState state) {
        return const SpacesPage();
      },
      routes: <RouteBase>[
      ],
    ),
  ],
);
