import 'dart:math';

import 'package:flutter/material.dart';

class ReaderBorderPainter extends CustomPainter {
  ReaderBorderPainter({
    required this.borderWidth,
    required this.borderColor,
  });

  final double borderWidth;
  final Color borderColor;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = borderColor
      ..strokeWidth = borderWidth
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    const percent = 1 / 3;

    // Draw the top left
    final path = Path()
      ..lineTo(size.width * percent, 0)
      ..moveTo(0, 0)
      ..lineTo(0, size.height * percent);

    // Draw the top left corner
    canvas.drawPath(path, paint);

    // Draw the other three corners clockwise
    for (var i = 0; i < 3; i++) {
      canvas
        ..rotate(pi / 2)
        ..translate(0, -size.height)
        ..drawPath(path, paint);
    }
  }

  @override
  bool shouldRepaint(ReaderBorderPainter oldDelegate) =>
      borderWidth != oldDelegate.borderWidth ||
      borderColor != oldDelegate.borderColor;
}
