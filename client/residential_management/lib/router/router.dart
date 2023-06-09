import 'package:auto_route/auto_route.dart';
import 'package:residential_management/router/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        /// routes go here
        AutoRoute(
          page: OwnersRoute.page,
          initial: true,
          path: '/',
        )
      ];
}
