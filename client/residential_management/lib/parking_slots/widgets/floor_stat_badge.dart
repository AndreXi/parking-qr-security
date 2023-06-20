import 'package:flutter/material.dart';

class FloorStatBadge extends StatelessWidget {
  const FloorStatBadge({
    required this.label,
    required this.a,
    required this.b,
    required this.percent,
    required this.color,
    super.key,
  });

  final String label;
  final int a;
  final int b;
  final int percent;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Container(
        width: 200,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: color, width: 3),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                children: [
                  Text(label),
                  Text(
                    '$a / $b',
                    style: const TextStyle(color: Colors.black45),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 8),
              decoration: BoxDecoration(color: color),
              width: 100,
              child: Text(
                '$percent%',
                textAlign: TextAlign.end,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
