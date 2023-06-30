import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:residential_management/l10n/l10n.dart';
import 'package:residential_management/router/router.gr.dart';

class MenuItem {
  const MenuItem({
    required this.label,
    required this.icon,
    required this.pageRoute,
  });

  final String label;
  final Icon icon;
  final PageRouteInfo pageRoute;
}

class MenuItems {
  MenuItems(this.l10n) {
    menuItems = [
      MenuItem(
        label: l10n.navigation_menuItems_owners,
        icon: const Icon(Icons.person),
        pageRoute: const OwnersRoute(),
      ),
      MenuItem(
        label: l10n.navigation_menuItems_parking,
        icon: const Icon(Icons.directions_car_rounded),
        pageRoute: ParkingSlotsRoute(),
      ),
      MenuItem(
        label: l10n.navigation_menuItems_storage,
        icon: const Icon(Icons.save_alt_rounded),
        pageRoute: const DebugRoute(),
      ),
    ];
  }

  final AppLocalizations l10n;
  late List<MenuItem> menuItems;

  List<MenuItem> getMenuItems() {
    return menuItems;
  }

  List<NavigationDestination> getBottomMenuDestinations() {
    return menuItems
        .map((e) => NavigationDestination(icon: e.icon, label: e.label))
        .toList();
  }

  List<NavigationRailDestination> getRailMenuDestinations() {
    return menuItems
        .map(
          (e) => NavigationRailDestination(icon: e.icon, label: Text(e.label)),
        )
        .toList();
  }
}
