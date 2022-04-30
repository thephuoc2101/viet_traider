import '../../locale/locale.dart';
import 'package:flutter/material.dart';

enum MakerType { vnIndex, vn30, hnx, upCom }

extension MakerTypeEx on MakerType {
  static const _codes = ["10", "11", "02", "03"];
  static const _names = ['VNIndex', 'VN30', 'HNX', 'UPCOM'];
  static const _syms = ['VNINDEX', 'VN30', 'HNXINDEX', 'UPCOMINDEX'];

  String get code => _codes[MakerType.values.indexOf(this)];

  String get name => _names[MakerType.values.indexOf(this)];

  String get sym => _syms[MakerType.values.indexOf(this)];

  static MakerType? fromCode(String code) {
    if (!_codes.contains(code)) return null;
    final index = _codes.indexOf(code);
    return MakerType.values[index];
  }
}
