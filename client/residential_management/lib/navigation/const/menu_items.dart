import 'package:flutter/material.dart';
import 'package:residential_management/l10n/l10n.dart';

class MenuItem {
  const MenuItem(this.label, this.icon);

  final String label;
  final Icon icon;
}

class MenuItems {
  MenuItems(this.l10n) {
    menuItems = [
      MenuItem(
        l10n.navigation_menuItems_owners,
        const Icon(Icons.person),
      ),
      MenuItem(
        l10n.navigation_menuItems_parking,
        const Icon(Icons.directions_car_rounded),
      ),
      MenuItem(
        l10n.navigation_menuItems_storage,
        const Icon(Icons.save_alt_rounded),
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
