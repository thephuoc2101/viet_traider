import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../share/share.dart';


extension ThemeDataExt on ThemeData {

  static ThemeData build(String? mode) {
    switch (mode) {
      case ThemeCodes.dark:
        return ThemeData(
          brightness: Brightness.dark,
          primaryColor: const Color(0xffED2529),
          fontFamily: 'Roboto',

        );
      case ThemeCodes.light:
      default:
        return ThemeData(
          brightness: Brightness.light,
          primaryColor: const Color(0xff005AA9),
          hoverColor: const Color(0xffF2F5FD),
          hintColor: const Color(0xff8B8B8B),
          disabledColor: const Color(0xffF5F6FA),
          backgroundColor: const Color(0xffF9F9F9),
          errorColor: const Color(0xffED2529),
          fontFamily: 'Roboto',
          textTheme: const TextTheme(
            bodyText1: TextStyle(color: Color(0xff222222)),
            bodyText2: TextStyle(color: Color(0xff222222)),
          ),
          tabBarTheme: const TabBarTheme(
            labelColor: Colors.white,
            indicator: UnderlineTabIndicator(
                borderSide: BorderSide(color: Colors.amber, width: 2)),
          ),
          colorScheme: ColorScheme.fromSwatch()
              .copyWith(secondary: const Color(0xff222222)),
        );
    }
  }
}
