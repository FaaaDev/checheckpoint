import 'package:flutter/material.dart';

class CustomTabIndicator extends Decoration {
  final BoxPainter _painter;

  CustomTabIndicator({required Color color})
      : _painter = _CirclePainter(color);

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) => _painter;
}

class _CirclePainter extends BoxPainter {
  final Paint _paint;

  _CirclePainter(Color color)
      : _paint = Paint()
          ..color = color
          ..isAntiAlias = true;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    final Offset circleOffset =
        offset + Offset(cfg.size!.width*0.12, cfg.size!.height);
    canvas.drawRRect(
      RRect.fromRectAndRadius(Rect.fromCenter(center: circleOffset, width: cfg.size!.width/4, height: 4), Radius.circular(2.0)),
      _paint,
    );
  }
}