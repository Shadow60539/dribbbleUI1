import 'package:flutter/material.dart';

class RectangularTabIndicator extends Decoration {
  final BoxPainter _painter;

  RectangularTabIndicator({
    @required Color color,
    @required double height,
    @required double width,
    @required double radius,
  }) : _painter = _CirclePainter(color, width, height, radius);

  @override
  BoxPainter createBoxPainter([onChanged]) => _painter;
}

class _CirclePainter extends BoxPainter {
  final Paint _paint;
  final double width;
  final double height;
  final double radius;

  _CirclePainter(Color color, this.width, this.height, this.radius)
      : _paint = Paint()
          ..color = color
          ..isAntiAlias = true;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    final Offset circleOffset =
        offset + Offset(cfg.size.width / 2, cfg.size.height / 1.5 - radius + 5);
    canvas.drawRRect(
        RRect.fromRectAndRadius(
            Rect.fromCenter(
                center: circleOffset, width: width - 20, height: height),
            Radius.circular(radius)),
        _paint);
  }
}
