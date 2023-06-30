import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:residential_management/l10n/l10n.dart';
import 'package:residential_management/navigation/navigation.dart';

class NavigationMobile extends StatelessWidget {
  const NavigationMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final localizedItems = MenuItems(l10n);
    final menuItems = localizedItems.getBottomMenuDestinations();

    return BlocBuilder<NavigationCubit, int>(
      builder: (context, state) {
        return NavigationBar(
          destinations: menuItems,
          onDestinationSelected: (value) {
            context.read<NavigationCubit>().changeIndex(value);
            context.router.push(localizedItems.menuItems[value].pageRoute);
          },
          selectedIndex: state,
        );
      },
    );
  }
}
