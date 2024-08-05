import 'dart:typed_data';

import 'package:find_space/space/domain/entity/group.dart';
import 'package:find_space/space/domain/entity/space.dart';
import 'package:find_space/space/router/route_constants.dart';
import 'package:find_space/space/ui/create_space_page.dart';
import 'package:find_space/space/ui/edit_space_page.dart';
import 'package:find_space/space/ui/space_detail_page.dart';
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
        GoRoute(
          path: RoutePath.createSpace,
          name: RouteName.createSpace,
          builder: (BuildContext context, GoRouterState state) {
            final groups = state.extra! as List<Group>;
            return CreateSpacePage(groupsArgs: groups);
          },
        ),
        GoRoute(
          path: RoutePath.spaceDetail,
          name: RouteName.spaceDetail,
          builder: (BuildContext context, GoRouterState state) {
            if (state.extra == null) {
              return SpaceDetailPage();
            }
            final extra = state.extra! as Map<String, dynamic>;
            return SpaceDetailPage(
              groupsArgs: extra[RouteParam.groups] as List<Group>,
              space: extra[RouteParam.space] as Space,
            );
          },
          routes: <RouteBase>[
            GoRoute(
              path: RoutePath.spaceEdit,
              name: RouteName.spaceEdit,
              builder: (BuildContext context, GoRouterState state) {
                if (state.extra == null) {
                  return EditSpacePage();
                }
                final extra = state.extra! as Map<String, dynamic>;
                return EditSpacePage(
                  groupsArgs: extra[RouteParam.groups] as List<Group>,
                  space: extra[RouteParam.space] as Space,
                );
              },
            ),
          ],
        ),
      ],
    ),
  ],
);
