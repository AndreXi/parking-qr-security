import 'package:flutter/material.dart';

class GridPainter extends CustomPainter {
  const GridPainter({
    this.lineColor = const Color.fromRGBO(255, 0, 0, 0.3),
    this.lineWidth = 0.5,
    this.spacing = 8,
  });

  final Color lineColor;
  final double lineWidth;
  final double spacing;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = lineColor
      ..strokeWidth = lineWidth;

    for (var i = spacing; i < size.width; i += spacing) {
      canvas.drawLine(Offset(i, 0), Offset(i, size.height), paint);
    }

    for (var i = spacing; i < size.height; i += spacing) {
      canvas.drawLine(Offset(0, i), Offset(size.width, i), paint);
    }
  }

  @override
  bool shouldRepaint(GridPainter oldDelegate) => false;
}
