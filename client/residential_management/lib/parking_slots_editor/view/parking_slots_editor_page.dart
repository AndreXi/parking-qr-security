import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:residential_management/l10n/l10n.dart';
import 'package:residential_management/locations_editor/widgets/location_editor_open_button.dart';
import 'package:residential_management/parking_slots_editor/widgets/parking_floor_selector/parking_floor_selector.dart';

@RoutePage()
class ParkingSlotsEditorPage extends StatelessWidget {
  const ParkingSlotsEditorPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Scaffold(
        appBar: AppBar(
          title: Text(l10n.parkingSlotsEditorAppBarTitle),
        ),
        body: Form(
            child: Column(
          children: [
            Row(
              children: [
                Text(l10n.parkingSlotsEditor_selectALocation),
                LocationEditorOpenButton(),
              ],
            ),
            ParkingFloorSelector()
          ],
        )));
  }
}
