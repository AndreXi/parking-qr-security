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
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(8),
          topLeft: Radius.circular(8),
        ),
        color: Color.fromRGBO(90, 100, 109, 0.88),
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
