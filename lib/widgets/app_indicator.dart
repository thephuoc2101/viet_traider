import 'package:flutter/material.dart';

enum MD2IndicatorSize {
  tiny,
  normal,
  full,
  custom,
}

class MD2Indicator extends Decoration {
  final double? indicatorHeight;
  final double? indicatorWidth;
  final Color? indicatorColor;
  final MD2IndicatorSize? indicatorSize;

  const MD2Indicator(
      {@required this.indicatorHeight,
      this.indicatorWidth = 16,
      @required this.indicatorColor,
      @required this.indicatorSize})
      : assert(indicatorWidth != null);

  @override
  _MD2Painter createBoxPainter([VoidCallback? onChanged]) {
    return new _MD2Painter(this, onChanged!);
  }
}

class _MD2Painter extends BoxPainter {
  final MD2Indicator decoration;

  _MD2Painter(this.decoration, VoidCallback onChanged) : super(onChanged);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    assert(configuration.size != null);

    Rect? rect;
    if (decoration.indicatorSize == MD2IndicatorSize.full) {
      rect = Offset(offset.dx,
              (configuration.size!.height - decoration.indicatorHeight!)) &
          Size(configuration.size!.width, decoration.indicatorHeight ?? 3);
    } else if (decoration.indicatorSize == MD2IndicatorSize.normal) {
      rect = Offset(offset.dx + 6,
              (configuration.size!.height - decoration.indicatorHeight!)) &
          Size(configuration.size!.width - 12, decoration.indicatorHeight ?? 3);
    } else if (decoration.indicatorSize == MD2IndicatorSize.tiny) {
      rect = Offset(offset.dx + configuration.size!.width / 2 - 8,
              (configuration.size!.height - decoration.indicatorHeight!)) &
          Size(16, decoration.indicatorHeight ?? 3);
    } else if (decoration.indicatorSize == MD2IndicatorSize.custom) {
      rect = Offset(
              offset.dx +
                  configuration.size!.width / 2 -
                  (decoration.indicatorWidth! / 2),
              (configuration.size!.height - decoration.indicatorHeight!) / 2) &
          Size(decoration.indicatorWidth!, decoration.indicatorHeight ?? 3);
    }

    final Paint paint = Paint();
    paint.color = decoration.indicatorColor ?? Color(0xff1967d2);
    paint.style = PaintingStyle.fill;
    canvas.drawRRect(
        RRect.fromRectAndCorners(rect!,
            topRight: Radius.circular(8),
            topLeft: Radius.circular(8),
            bottomRight: Radius.circular(8),
            bottomLeft: Radius.circular(8)),
        paint);
  }
}
