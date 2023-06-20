import 'package:flutter/material.dart';
import 'package:residential_management/l10n/l10n.dart';
import 'package:residential_management/parking_slots/widgets/floor_stat_badge.dart';
import 'package:residential_management/parking_slots/widgets/floor_title_container.dart';

final _ownedColor = Colors.red.shade300;
final _rentedColor = Colors.orange.shade200;
final _freeColor = Colors.lightGreen.shade300;

class ParkingSlotFloorInfo extends StatelessWidget {
  const ParkingSlotFloorInfo({
    required this.slots,
    required this.owned,
    required this.rented,
    required this.name,
    super.key,
    this.description,
  });

  final String name;
  final String? description;
  final int slots;
  final int owned;
  final int rented;

  List<Widget> _getBoxSlots() {
    final boxSlots = <Widget>[];

    for (var i = 0; i < slots; i++) {
      var color = _rentedColor;
      if (i >= owned) color = _freeColor;
      if (i < owned - rented) color = _ownedColor;

      boxSlots.add(
        Container(
          width: 14,
          height: 14,
          color: color,
        ),
      );
    }

    return boxSlots;
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Container(
      width: 600,
      padding: const EdgeInsets.all(8),
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FloorTitleContainer(name: name),
            Padding(
              padding: const EdgeInsets.only(
                top: 12,
                left: 18,
                right: 18,
              ),
              child: Text(
                description ?? '',
                style: const TextStyle(fontSize: 14, color: Colors.black45),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18),
              child: Wrap(
                runSpacing: 18,
                spacing: 18,
                children: [
                  Column(
                    children: [
                      FloorStatBadge(
                        label: l10n.parkingSlots_parkingSlotFloorInfo_owned,
                        a: owned,
                        b: slots,
                        percent: (owned / slots * 100).round(),
                        color: _ownedColor,
                      ),
                      FloorStatBadge(
                        label: l10n.parkingSlots_parkingSlotsFloorInfo_rented,
                        a: rented,
                        b: owned,
                        percent: (rented / owned * 100).round(),
                        color: _rentedColor,
                      ),
                      FloorStatBadge(
                        label: l10n.parkingSlots_parkingSlotFloorInfo_free,
                        a: slots - owned,
                        b: slots,
                        percent: ((slots - owned) / slots * 100).round(),
                        color: _freeColor,
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    width: 320,
                    child: Wrap(
                      runSpacing: 4,
                      spacing: 4,
                      children: _getBoxSlots(),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
