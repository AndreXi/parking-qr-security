import 'package:flutter/material.dart';

class BuildingLocationBadge extends StatelessWidget {
  const BuildingLocationBadge({
    required this.floor,
    required this.apto,
    required this.buildingName,
    super.key,
  });

  final String floor;
  final String apto;
  final String buildingName;

  @override
  Widget build(BuildContext context) {
    const style = TextStyle(
      fontSize: 14,
      color: Colors.white,
      fontWeight: FontWeight.bold,
      height: 1,
    );

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8 * 1.5, vertical: 8 * 1),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomRight: Radius.circular(16),
          topLeft: Radius.circular(16),
        ),
        color: Colors.blue[600],
      ),
      child: Wrap(
        spacing: 8,
        children: [
          Text(floor, style: style),
          Text(apto, style: style),
          Text(buildingName, style: style),
        ],
      ),
    );
  }
}
