import 'package:authenticator/app/styles/app_style.dart';
import 'package:flutter/material.dart';

class Themes {
  final lightTheme = ThemeData(
      // brightness: Brightness.light,
      colorScheme: ColorScheme.dark(
        brightness: Brightness.light,
        primary: Color(0xffF4F4F4),
        background: Color(0xffE1E1E1),
      )
  );

  final darkTheme = ThemeData(
    // brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
        brightness: Brightness.dark,
        primary: Color(0xff1E1E1E),
        background: AppColor.primaryBlack,
        secondary: Color(0xff1E1E1E),
    )
  );
}