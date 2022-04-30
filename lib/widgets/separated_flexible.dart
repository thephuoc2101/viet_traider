import 'package:flutter/material.dart';

class SeparatedRow extends StatelessWidget {
  final List<Widget> children;
  final Widget Function()? separatorBuilder;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisSize mainAxisSize;
  final TextBaseline? textBaseline;
  final TextDirection? textDirection;
  final VerticalDirection verticalDirection;
  final EdgeInsets? padding;
  final bool flexEqual;

  const SeparatedRow({
    Key? key,
    required this.children,
    this.separatorBuilder,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.mainAxisSize = MainAxisSize.max,
    this.verticalDirection = VerticalDirection.down,
    this.textBaseline,
    this.textDirection,
    this.padding,
    this.flexEqual = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> c = flexEqual
        ? children.map<Widget>((e) => Expanded(child: e)).toList()
        : children.toList();
    for (var i = c.length; i-- > 0;) {
      if (i > 0 && separatorBuilder != null) c.insert(i, separatorBuilder!());
    }
    Widget row = Row(
      children: c,
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
    );
    return this.padding == null ? row : Padding(padding: padding!, child: row);
  }
}

class SeparatedColumn extends StatelessWidget {
  final List<Widget> children;
  final Widget Function()? separatorBuilder;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisSize mainAxisSize;
  final TextBaseline? textBaseline;
  final TextDirection? textDirection;
  final VerticalDirection verticalDirection;
  final EdgeInsets? padding;

  const SeparatedColumn({
    Key? key,
    required this.children,
    this.separatorBuilder,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.mainAxisSize = MainAxisSize.max,
    this.verticalDirection = VerticalDirection.down,
    this.textBaseline,
    this.textDirection,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> itemList = [];
    if (separatorBuilder != null) {
      for (var i = 0; i < children.length; i++) {
        itemList.add(children[i]);
        if (i != children.length - 1) {
          itemList.add(separatorBuilder!());
        }
      }
    } else {
      itemList.addAll(children);
    }

    Widget col = Column(
      children: itemList,
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
    );
    return this.padding == null ? col : Padding(padding: padding!, child: col);
  }
}
