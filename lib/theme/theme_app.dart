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
          // scaffoldBackgroundColor: const Color(0xff000000),
          fontFamily: 'Roboto',
          tabBarTheme: TabBarTheme(
            labelStyle:
                const TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
            unselectedLabelStyle:
                const TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
            labelColor: Colors.white,
            unselectedLabelColor: const Color(0xffC8CDD1),
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(
                6.0,
              ),
              color: const Color(0xff7E1FFF),
            ),
          ),
        );
      case ThemeCodes.light:
      default:
        return ThemeData(
          brightness: Brightness.light,
          primaryColor: const Color(0xff7E1FFF),
          // scaffoldBackgroundColor: const Color(0xfff8fafc),
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

          tabBarTheme: TabBarTheme(
            labelStyle:
                const TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
            unselectedLabelStyle:
                const TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
            labelColor: Colors.white,
            unselectedLabelColor: const Color(0xff5C6269),
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(
                6.0,
              ),
              color: const Color(0xff7E1FFF),
            ),
          ),
          colorScheme: ColorScheme.fromSwatch()
              .copyWith(secondary: const Color(0xff222222)),
        );
    }
  }
}
