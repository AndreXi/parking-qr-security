import 'package:auto_route/auto_route.dart';
import 'package:residential_management/router/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        /// routes go here
        AutoRoute(
          page: DebugRoute.page,
          initial: true,
          path: '/',
        ),
        AutoRoute(
          page: OwnersRoute.page,
          path: '/owners',
        ),
        AutoRoute(
          page: ParkingSlotsRoute.page,
          path: '/parking-slots',
        ),
      ];
}
