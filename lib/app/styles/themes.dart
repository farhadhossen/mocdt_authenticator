import 'package:authenticator/app/styles/app_style.dart';
import 'package:flutter/material.dart';

class Themes {
  final lightTheme = ThemeData(
      // brightness: Brightness.light,
    colorScheme: ColorScheme.dark(
    brightness: Brightness.light,
    background: AppColor.bgLight,

    //app bar
    primary: AppColor.appbarBgLight,
    onPrimary: AppColor.appBarTextLight,
    surfaceTint: AppColor.appbarStkLight,

    //bottom bar
    secondary: AppColor.btmBarBgLight,
    onSecondary: AppColor.btmBarIcActvLight,
    scrim: AppColor.btmBarIcDeActvLight,

    //home
    primaryContainer: AppColor.searchBgLight,
    onPrimaryContainer: AppColor.searchIcHntLight,

    surface: AppColor.homeCrd1Light,
    secondaryContainer: AppColor.homeCrd2Light,
    onSecondaryContainer: AppColor.homeCrdTxt1Light,
    onSurface: AppColor.homeCrdTxt2Light,
    onInverseSurface: AppColor.homeCrdIcLight,

    //Notification
    tertiary: AppColor.ntfnCrd1Light,
    onTertiary: AppColor.ntfnCrd2Light,
    onTertiaryContainer: AppColor.ntfnTxt1Light,
    surfaceVariant: AppColor.ntfnTxt2Light,
    onSurfaceVariant: AppColor.ntfnIcLight,

    //profile
    error: AppColor.prfCrd1Light,
    onError: AppColor.prfCrd2Light,
    errorContainer: AppColor.prfTxt1Light,
    onErrorContainer: AppColor.prfTxt2Light,
    outline: AppColor.prfCrd3Light,
    outlineVariant: AppColor.prfCrdStk1Light,
    tertiaryContainer: AppColor.prfCrdStk2Light,
    inversePrimary: AppColor.prfIc1Light,
    inverseSurface: AppColor.prfIc2Light,
    onBackground: AppColor.prfTxt3Light,

      shadow: AppColor.imExCrdLight
  ));

  final darkTheme = ThemeData(
      // brightness: Brightness.dark,
      colorScheme: ColorScheme.dark(
    brightness: Brightness.dark,
        background: AppColor.bgDark,

        //app bar
        primary: AppColor.appbarBgDark,
        onPrimary: AppColor.appBarTextDark,
        surfaceTint: AppColor.appbarStkDark,

        //bottom bar
        secondary: AppColor.btmBarBgDark,
        onSecondary: AppColor.btmBarIcActvDark,
        scrim: AppColor.btmBarIcDeActvDark,

        //home
        primaryContainer: AppColor.searchBgDark,
        onPrimaryContainer: AppColor.searchIcHntDark,

        surface: AppColor.homeCrd1Dark,
        secondaryContainer: AppColor.homeCrd2Dark,
        onSecondaryContainer: AppColor.homeCrdTxt1Dark,
        onSurface: AppColor.homeCrdTxt2Dark,
        onInverseSurface: AppColor.homeCrdIcDark,

        //Notification
        tertiary: AppColor.ntfnCrd1Dark,
        onTertiary: AppColor.ntfnCrd2Dark,
        onTertiaryContainer: AppColor.ntfnTxt1Dark,
        surfaceVariant: AppColor.ntfnTxt2Dark,
        onSurfaceVariant: AppColor.ntfnIcDark,

        //profile
        error: AppColor.prfCrd1Dark,
        onError: AppColor.prfCrd2Dark,
        errorContainer: AppColor.prfTxt1Dark,
        onErrorContainer: AppColor.prfTxt2Dark,
        outline: AppColor.prfCrd3Dark,
        outlineVariant: AppColor.prfCrdStk1Dark,
        tertiaryContainer: AppColor.prfCrdStk2Dark,
        inversePrimary: AppColor.prfIc1Dark,
        inverseSurface: AppColor.prfIc2Dark,
        onBackground: AppColor.prfTxt3Dark,

          shadow: AppColor.imExCrdDark

      ));
}
