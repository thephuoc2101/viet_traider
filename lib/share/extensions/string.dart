import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension TextStyleExtensions on String? {
  Widget toText({
    double? size = 14.0,
    String? fontFamily = 'Aeonil',
    FontWeight? weight = FontWeight.normal,
    Color? color,
    TextStyle? style,
    int? maxLines,
    TextOverflow? overflow,
    TextAlign? textAlign,
    bool selectable = false,
  }) {
    return selectable
        ? SelectableText(
      this ?? '',
      maxLines: maxLines,
      textAlign: textAlign,
      style: TextStyle(
        fontFamily: fontFamily,
        fontSize: size,
        fontWeight: weight,
        color: color,
      ).merge(style),
    )
        : Text(
      this ?? '',
      maxLines: maxLines,
      overflow: overflow,
      textAlign: textAlign,
      style: TextStyle(
        fontFamily: fontFamily,
        fontSize: size,
        fontWeight: weight,
        color: color,
      ).merge(style),
    );
  }
}

extension StringEx on String? {
  bool get isNullOrEmpty {
    return this == null || this!.isEmpty;
  }

  String toCurrency() {
    try {
      final numFormat = NumberFormat("#,##0.00", "en_US");
      num value = num.parse(toString());
      return numFormat.format(value);
    } catch (e) {
      return toString();
    }
  }
}