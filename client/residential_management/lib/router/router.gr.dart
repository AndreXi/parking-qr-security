// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:residential_management/counter/view/counter_page.dart' as _i2;
import 'package:residential_management/owners/view/owners_page.dart' as _i1;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    OwnersRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.OwnersPage(),
      );
    },
    CounterRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.CounterPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.OwnersPage]
class OwnersRoute extends _i3.PageRouteInfo<void> {
  const OwnersRoute({List<_i3.PageRouteInfo>? children})
      : super(
          OwnersRoute.name,
          initialChildren: children,
        );

  static const String name = 'OwnersRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.CounterPage]
class CounterRoute extends _i3.PageRouteInfo<void> {
  const CounterRoute({List<_i3.PageRouteInfo>? children})
      : super(
          CounterRoute.name,
          initialChildren: children,
        );

  static const String name = 'CounterRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}
