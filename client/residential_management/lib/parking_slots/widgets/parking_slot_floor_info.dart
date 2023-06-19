import 'package:flutter/material.dart';

class ParkingSlotFloorInfo extends StatelessWidget {
  const ParkingSlotFloorInfo({
    required this.slots,
    required this.owned,
    required this.rented,
    super.key,
  });

  final int slots;
  final int owned;
  final int rented;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
