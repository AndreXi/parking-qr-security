import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:residential_management/l10n/l10n.dart';
import 'package:residential_management/navigation/navigation.dart';

class NavigationDesktop extends StatelessWidget {
  const NavigationDesktop({required this.index, super.key});

  final int index;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final localizedItems = MenuItems(l10n);
    final menuItems = localizedItems.getRailMenuDestinations();

    return NavigationRail(
      labelType: NavigationRailLabelType.selected,
      destinations: menuItems,
      onDestinationSelected: (value) {
        if (index != value) {
          context.router.push(localizedItems.menuItems[value].pageRoute);
        }
      },
      selectedIndex: index,
    );
  }
}
