import 'package:flutter/material.dart';
import 'dart:math' as math;

class LiquidPoolPainter extends CustomPainter {
  final double animation;
  final Color color;

  LiquidPoolPainter({
    required this.animation,
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final width = size.width;
    final height = size.height;
    final centerX = width / 2;
    final centerY = height / 2;

    // Draw the main liquid pool with a more organic shape
    final mainPaint = Paint()
      // ignore: deprecated_member_use
      ..color = color
      ..style = PaintingStyle.fill;

    final mainPath = Path();
    
    // Create an organic blob shape with more points for smoother animation
    final points = <Offset>[];
    final numPoints = 60; // Increased number of points for smoother shape
    final radius = math.min(width, height) * 0.55; // Increased radius for larger area
    
    for (int i = 0; i < numPoints; i++) {
      final angle = (i / numPoints) * 2 * math.pi;
      // Reduced amplitude for subtler movement
      final noise = math.sin(angle * 2 + animation * 0.8) * 0.06 +
                   math.cos(angle * 3 - animation * 0.6) * 0.06 +
                   math.sin(angle * 5 + animation * 0.4) * 0.04;
      final r = radius * (1 + noise);
      points.add(Offset(
        centerX + r * math.cos(angle),
        centerY + r * math.sin(angle),
      ));
    }

    // Create a smooth curve through all points
    mainPath.moveTo(points[0].dx, points[0].dy);
    for (int i = 0; i < points.length; i++) {
      final p0 = points[i];
      final p1 = points[(i + 1) % points.length];
      
      final xc = (p0.dx + p1.dx) / 2;
      final yc = (p0.dy + p1.dy) / 2;
      mainPath.quadraticBezierTo(p0.dx, p0.dy, xc, yc);
    }
    mainPath.close();

    canvas.drawPath(mainPath, mainPaint);
  }

  @override
  bool shouldRepaint(LiquidPoolPainter oldDelegate) {
    return animation != oldDelegate.animation;
  }
} 