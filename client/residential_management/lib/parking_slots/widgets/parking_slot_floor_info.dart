import 'package:flutter/material.dart';

class ParkingSlotFloorInfo extends StatelessWidget {
  const ParkingSlotFloorInfo({
    required this.slots,
    required this.owned,
    required this.rented,
    required this.name,
    super.key,
  });

  final String name;
  final int slots;
  final int owned;
  final int rented;

  List<Widget> _getBoxSlots() {
    final boxSlots = <Widget>[];

    for (var i = 0; i < slots; i++) {
      Color color = Colors.yellow;
      if (i >= owned) color = Colors.grey;
      if (i < owned - rented) color = Colors.red;

      boxSlots.add(
        Container(
          width: 16,
          height: 16,
          color: color,
        ),
      );
    }

    return boxSlots;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(name),
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Text('Ocupados\nhola'),
                    Text('Alquilados'),
                    Text('Vacios'),
                  ],
                ),
                Wrap(
                  runSpacing: 8,
                  spacing: 8,
                  children: _getBoxSlots(),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
