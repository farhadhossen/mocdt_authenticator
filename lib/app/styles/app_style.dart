///Name: MILON SHEIKH
///Email: milonsheikh88@gmail.com

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppColor {

  static Color get primaryAppColor => const Color(0xff000000);

  static Color get shadowColor => const Color(0xffa3a3a4);

  static Color get scaffoldBackground => const Color(0xFFFAFAFA);

  static Color get accentColor => const Color(0xFF86E773);

  static Color get colorWhite => const Color(0xFFFFFFFF);

  static Color get colorBlack => const Color(0xFF000000);

  static Color get colorHeader => const Color(0xFF424242);

  static Color get limeGreenLight => const Color(0xFFEAFFF0);

  static Color get redColor => const Color(0xFFF82F13);

  static Color get iconGray => const Color(0xFFC2C6BF);

  static Color get textGray => const Color(0xFF909190);

  static Color get buttonGreen => const Color(0xFFE1E8DE);

  static Color get circleGreen => const Color(0xFF68914C);

  static Color get circleOrange => const Color(0xFFFFF7ED);

  static Color get textOrange => const Color(0xFFE99A3C);



  /// auth colors

  static Color get primaryBlack => const Color(0xFF080808);

  static Color get secondaryBlack => const Color(0xFF272727);

  static Color get cardBlack => const Color(0xFF161616);

  static Color get splashLogoBg => const Color(0xFF1B1B1A);

  static Color get splashOuterCircleDark1 => const Color(0xAE0DFDB);

  static Color get splashOuterCircleDark2 => const Color(0xDE0DFDB);

  static Color get splashOuterCircleDark3 => const Color(0x12FFFFFF);

  static Color get bottomNavTextDark => const Color(0x66FDFDFF);

  static Color get homeCardTitleDark => const Color(0xB3E1E5F1);

  static Color get descripTextDark => const Color(0x73FFFFFF);

  static Color get cardStrokeWhite => const Color(0xFFF3F2EE);

  static Color get buttonWhite => const Color(0xFFF3F2EE);

  static Color get cardStrokeRed => const Color(0xFFF97066);

  static Color get whiteText => const Color(0xFFF4F4F4);

  static Color get colorGrey => const Color(0xFF6A6A6B);

  static Color get appBarStock => const Color(0xFF1E1E1E);


  static Color get iconBlue => const Color(0xFF287BFF);






}

class AppSize {
  static double get textXXXXLarge => 48.sp;

  static double get textXXXLarge => 44.sp;

  static double get textXXLarge => 32.sp;

  static double get textXLarge => 24.sp;

  static double get textLarge => 20.sp;

  static double get textXMedium => 18.sp;

  static double get textMedium => 16.sp;

  static double get textSmall => 14.sp;

  static double get textXSmall => 12.sp;

  static double get textXXSmall => 10.sp;

  static double get s2 => 1.w;

  static double get s4 => 4.w;

  static double get s6 => 6.w;

  static double get s8 => 8.w;

  static double get s10 => 10.w;

  static double get s12 => 12.w;

  static double get s14 => 14.w;

  static double get s16 => 16.w;

  static double get s18 => 18.w;

  static double get s20 => 20.w;

  static double get s24 => 24.w;

  static double get s26 => 26.w;

  static double get s28 => 28.w;

  static double get s32 => 32.w;

  static double get s36 => 36.w;

  static double get s42 => 42.w;

  static double get s50 => 50.w;

  static double get s56 => 56.w;

  static double get s64 => 64.w;

  static double get s80 => 80.w;

  static double get s130 => 130.h;

  static double get s150 => 150.h;

  static double get s200 => 200.h;
}

class AppStyle{
  static TextStyle get title => TextStyle(fontSize: AppSize.s18, color: AppColor.colorBlack);
  static TextStyle get subTitle => TextStyle(fontSize: AppSize.s16, color: AppColor.colorBlack);
}
