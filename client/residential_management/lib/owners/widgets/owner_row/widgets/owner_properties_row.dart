import 'package:flutter/material.dart';

Icon _makeIcon(IconData icon) {
  return Icon(
    icon,
    size: 16,
    color: Colors.black45,
  );
}

const _textStyle = TextStyle(
  color: Colors.black45,
  fontSize: 12,
);

class OwnerPropertiesRow extends StatelessWidget {
  const OwnerPropertiesRow({
    required this.parkingSlots,
    required this.stores,
    super.key,
  });

  final int parkingSlots;
  final int stores;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8 * 3, vertical: 8 * 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          _makeIcon(Icons.local_parking_rounded),
          Container(
            width: 28,
            padding: const EdgeInsets.only(left: 4),
            child: Text(parkingSlots.toString(), style: _textStyle),
          ),
          const SizedBox(width: 16),
          _makeIcon(Icons.storage_rounded),
          Container(
            width: 28,
            padding: const EdgeInsets.only(left: 4),
            child: Text(
              stores.toString(),
              style: _textStyle,
            ),
          ),
        ],
      ),
    );
  }
}
