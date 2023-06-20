import 'package:flutter/material.dart';

class FloorTitleContainer extends StatelessWidget {
  const FloorTitleContainer({required this.name, super.key});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8 * 1.5,
        vertical: 8 * 1,
      ),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomRight: Radius.circular(16),
          topLeft: Radius.circular(16),
        ),
        color: Colors.grey.shade500,
      ),
      child: Text(
        name,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.bold,
          height: 1,
        ),
      ),
    );
  }
}
