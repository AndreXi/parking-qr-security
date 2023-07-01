import 'package:auto_route/auto_route.dart';
import 'package:residential_management/router/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        /// routes go here
        CustomRoute(
          page: DebugRoute.page,
          initial: true,
          path: '/',
          transitionsBuilder: TransitionsBuilders.noTransition,
        ),
        CustomRoute(
          page: OwnersRoute.page,
          path: '/owners',
          transitionsBuilder: TransitionsBuilders.noTransition,
        ),
        CustomRoute(
          page: ParkingSlotsRoute.page,
          path: '/parking-slots',
          transitionsBuilder: TransitionsBuilders.noTransition,
        ),
        CustomRoute(
          page: ParkingSlotsEditorRoute.page,
          path: '/parking-slots/editor',
          transitionsBuilder: TransitionsBuilders.noTransition,
        ),
        CustomRoute(
          page: StorageRoute.page,
          path: '/storage',
          transitionsBuilder: TransitionsBuilders.noTransition,
        ),
      ];
}
