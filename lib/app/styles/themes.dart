import 'package:authenticator/app/styles/app_style.dart';
import 'package:flutter/material.dart';

class Themes {
  final lightTheme = ThemeData(
      // brightness: Brightness.light,
      colorScheme: ColorScheme.dark(
        brightness: Brightness.light,
        background:AppColor.bgColorLight,
        primaryContainer: AppColor.cardLight,
        onPrimaryContainer: AppColor.cardTextGreyLight,
        outline: AppColor.appBarStockLight
      )
  );

  final darkTheme = ThemeData(
    // brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
        brightness: Brightness.dark,
        background: AppColor.bgColorDark,
        primaryContainer: AppColor.cardDark,
        onPrimaryContainer: AppColor.cardTextGreyDark,
        outline: AppColor.appBarStockDark,


        primary: AppColor.primaryBlack,
      secondary: AppColor.cardBlack,
      secondaryContainer: AppColor.bottomNavTextDark


    )
  );
}