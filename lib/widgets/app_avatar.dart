import '../../../widgets/widget.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class AppAvatar extends StatelessWidget {
  final double? width;
  final String? path;
  final double? height;
  final BoxFit? fit;

  final Alignment? alignment;

  const AppAvatar(this.path,
      {Key? key, this.width, this.height, this.fit, this.alignment})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
        child: AppImage.network(path, height: height, width: width));
  }
}

class AppCircleAvatar extends StatelessWidget {
  final String? name;
  final double? size;

  final Alignment? alignment;

  const AppCircleAvatar(
      {Key? key, required this.name, this.size, this.alignment})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return SizedBox(
      height: size,
      width: size,
      child: CircleAvatar(
        backgroundColor: _theme.primaryColor,
        child: Text(
          _getName(name ?? ''),
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }

  String _getName(String name) {
    if (name.length >= 1) {
      return name.substring(0, 1).toUpperCase();
    }
    return '';
  }
}
