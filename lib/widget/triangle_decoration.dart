import 'package:flutter/material.dart';

import '../themes/colors.dart';

class TriangleDecoration extends Decoration {
  const TriangleDecoration({this.color , this.width = 20, this.height = 10});

  final Color? color;
  final double width;
  final double height;

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) => _TrianglePainter(
        color: color??AppColors.scaffold,
        width: width,
        height: height,
      );

  TriangleDecoration copyWith({
    Color? color ,
    double width = 20,
    double height = 10,
  }) {
    return TriangleDecoration(color: color, width: width, height: height);
  }
}

class _TrianglePainter extends BoxPainter {
  const _TrianglePainter({
    required this.width,
    required this.height,
    required this.color,
  });

  final Color? color;
  final double width;
  final double height;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    final paint = Paint()
      ..color = color??AppColors.scaffold
      ..strokeWidth = 1
      ..isAntiAlias = true
      ..style = PaintingStyle.fill;
    final Offset triangleOffset = offset + Offset(cfg.size!.width / 2, cfg.size!.height);
    canvas.drawPath(trianglePath(triangleOffset.dx, triangleOffset.dy), paint);
  }

  Path trianglePath(double x, double y) {
    final xOffset = width / 2;
    final yOffset = height;
    return Path()
      ..moveTo(x - xOffset, y)
      ..lineTo(x, y - yOffset)
      ..lineTo(x + xOffset, y);
  }
}
