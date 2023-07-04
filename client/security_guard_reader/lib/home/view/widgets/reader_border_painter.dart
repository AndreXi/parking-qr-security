import 'package:flutter/material.dart';

class ReaderBorderPainter extends CustomPainter {
  ReaderBorderPainter({
    required this.borderWidth,
    required this.borderColor,
    required this.borderRadius,
  });

  final double borderWidth;
  final Color borderColor;
  final BorderRadius borderRadius;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = borderColor
      ..strokeWidth = borderWidth
      ..style = PaintingStyle.stroke;

    final paint2 = Paint()
      ..color = Colors.white
      ..strokeWidth = borderWidth - 8
      ..style = PaintingStyle.stroke;

    final rect = Rect.fromLTWH(
      borderWidth / 2,
      borderWidth / 2,
      size.width - borderWidth,
      size.height - borderWidth,
    );

    final rect2 = Rect.fromLTWH(
      borderWidth / 2,
      borderWidth / 2,
      size.width - borderWidth,
      size.height - borderWidth,
    );

    final path = Path()..addRRect(borderRadius.toRRect(rect));
    final path2 = Path()..addRRect(borderRadius.toRRect(rect2));

    canvas
      ..drawPath(path, paint)
      ..drawPath(path2, paint2);
  }

  @override
  bool shouldRepaint(ReaderBorderPainter oldDelegate) =>
      borderWidth != oldDelegate.borderWidth ||
      borderColor != oldDelegate.borderColor ||
      borderRadius != oldDelegate.borderRadius;
}
