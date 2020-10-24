import 'package:dribbble1/core/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChartPainter extends CustomPainter {
  final double value;
  Paint outlinePaint = Paint()
    ..style = PaintingStyle.stroke
    ..color = kOutline
    ..strokeCap = StrokeCap.round
    ..strokeWidth = 10;

  Paint b1Paint = Paint()
    ..style = PaintingStyle.stroke
    ..color = kB1
    ..strokeCap = StrokeCap.round
    ..strokeWidth = 10;
  Paint b2Paint = Paint()
    ..style = PaintingStyle.stroke
    ..color = kB2
    ..strokeCap = StrokeCap.round
    ..strokeWidth = 10;
  Paint b3Paint = Paint()
    ..style = PaintingStyle.stroke
    ..color = kB3
    ..strokeCap = StrokeCap.round
    ..strokeWidth = 10;
  Paint pPaint = Paint()
    ..style = PaintingStyle.stroke
    ..color = kP
    ..strokeCap = StrokeCap.round
    ..strokeWidth = 10;

  ChartPainter({this.value});

  @override
  void paint(Canvas canvas, Size size) {
    print(value);
    Path outlinePath = Path();
    Path b1Path = Path();
    Path b2Path = Path();
    Path b3Path = Path();
    Path pPath = Path();
    double origin = 75.0;
    double maxHeight = size.height * 0.7;

    for (int i = 0; i < 6; i++) {
      outlinePath.moveTo(origin, 20);
      outlinePath.lineTo(origin, maxHeight);
      switch (i) {
        case 0:
          {
            b1Path.moveTo(origin, maxHeight);
            b1Path.lineTo(origin, maxHeight * 0.6 * value);
          }
          break;
        case 1:
          {
            b2Path.moveTo(origin, maxHeight);
            b2Path.lineTo(origin, maxHeight * 0.3 * value);
          }
          break;
        case 2:
          {
            b3Path.moveTo(origin, maxHeight);
            b3Path.lineTo(origin, maxHeight * 0.7 * value);
          }
          break;
        case 3:
          {
            pPath.moveTo(origin, maxHeight);
            pPath.lineTo(origin, maxHeight * 0.5 * value);
          }
          break;
        case 4:
          {
            b2Path.moveTo(origin, maxHeight);
            b2Path.lineTo(origin, maxHeight * 0.8 * value);
          }
          break;
        case 5:
          {
            b3Path.moveTo(origin, maxHeight);
            b3Path.lineTo(origin, maxHeight * 0.9 * value);
          }
          break;
      }

      origin = origin + size.width * 0.12;
    }
    canvas.drawPath(outlinePath, outlinePaint);
    canvas.drawPath(b1Path, b1Paint);
    canvas.drawPath(b2Path, b2Paint);
    canvas.drawPath(b3Path, b3Paint);
    canvas.drawPath(pPath, pPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
