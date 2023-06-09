import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:residential_management/l10n/l10n.dart';
import 'package:residential_management/layout/layout.dart';

@RoutePage()
class StoragePage extends StatelessWidget {
  const StoragePage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Scaffold(
      appBar: AppBar(title: Text(l10n.storagePage_title)),
      body: LayoutResponsive(
        index: 3,
        child: Center(
          child: Text(l10n.storagePage_title),
        ),
      ),
    );
  }
}
