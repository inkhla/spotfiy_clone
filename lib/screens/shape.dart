import 'package:flutter/material.dart';

class DrawTriangle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    final paint = Paint()
      ..style = PaintingStyle.fill..color = Colors.amber;
    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(0, 130);
    path.lineTo(size.width, 0);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
