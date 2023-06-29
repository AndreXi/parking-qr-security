import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:residential_management/l10n/l10n.dart';
import 'package:residential_management/navigation/navigation.dart';

class NavigationMobile extends StatelessWidget {
  const NavigationMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final menuItems = MenuItems(l10n).getBottomMenuDestinations();

    return BlocBuilder<NavigationCubit, int>(
      builder: (context, state) {
        return NavigationBar(
          destinations: menuItems,
          onDestinationSelected: (value) =>
              context.read<NavigationCubit>().changeIndex(value),
          selectedIndex: state,
        );
      },
    );
  }
}
