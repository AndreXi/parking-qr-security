import 'package:flutter/material.dart';
import 'package:residential_management/l10n/l10n.dart';

class LocationEditorOpenButton extends StatelessWidget {
  const LocationEditorOpenButton({super.key});

  void onPressed() {}

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: const Icon(Icons.add),
      label: Text(l10n.locationEditorOpenButton_add),
    );
  }
}
