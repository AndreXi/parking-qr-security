import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:residential_management/l10n/l10n.dart';

@RoutePage()
class ParkingSlotsPage extends StatelessWidget {
  const ParkingSlotsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.parkingSlotsAppBarTitle),
      ),
    );
  }
}
