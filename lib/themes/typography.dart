import 'package:flutter/material.dart';
import 'package:flutter_code_sample/themes/font.dart';
import 'package:sizer/sizer.dart';
import 'colors.dart';

class AppTypography {
  AppTypography(this.fontFamily);

  final AppFontFamily fontFamily;

  late TextStyle headline1 = TextStyle(
    fontFamily: fontFamily.defaultFontFamily(),
    fontWeight: FontWeight.w700,
    fontSize: 32.sp,
    color: AppColors.onScaffold,
  );

  late TextStyle headline2 = TextStyle(
    fontFamily: fontFamily.defaultFontFamily(),
    fontWeight: FontWeight.w700,
    fontSize: 24.sp,
    color: AppColors.onScaffold,
  );

  late TextStyle headline3 = TextStyle(
    fontFamily: fontFamily.defaultFontFamily(),
    fontWeight: FontWeight.w700,
    fontSize: 22.sp,
    color: AppColors.onScaffold,
  );

  late TextStyle headline4 = TextStyle(
    fontFamily: fontFamily.defaultFontFamily(),
    fontWeight: FontWeight.w700,
    fontSize: 20.sp,
    color: AppColors.onScaffold,
  );

  late TextStyle headline5 = TextStyle(
    fontFamily: fontFamily.defaultFontFamily(),
    fontWeight: FontWeight.w600,
    fontSize: fontFamily.onLocale(english: 17.sp, farsi: 18.sp, french: 17.sp),
    color: AppColors.onScaffold,
  );

  late TextStyle headline6 = TextStyle(
    fontFamily: fontFamily.defaultFontFamily(),
    fontWeight: FontWeight.w600,
    fontSize: fontFamily.onLocale( english: 15.sp, farsi: 16.sp, french: 15.sp),
    color: AppColors.onScaffold,
  );


  late TextStyle bodyText1 = TextStyle(
    fontFamily: fontFamily.defaultFontFamily(),
    fontWeight: FontWeight.w500,
    fontSize: fontFamily.onLocale( english: 12.sp, farsi: 13.sp, french: 12.sp),
    color: AppColors.onScaffold,
  );

  late TextStyle bodyText2 = TextStyle(
    fontFamily: fontFamily.defaultFontFamily(),
    fontWeight: FontWeight.w400,
    fontSize: 16.sp,
    color: AppColors.onScaffold,
  );

  late TextStyle subtitle1 = TextStyle(
    fontFamily: fontFamily.defaultFontFamily(),
    fontWeight: FontWeight.w500,
    fontSize: fontFamily.onLocale(english: 13.sp, farsi: 14.sp, french:  13.sp),
    color: AppColors.onScaffold,
  );

  late TextStyle subtitle2 = TextStyle(
    fontFamily: fontFamily.defaultFontFamily(),
    fontWeight: FontWeight.w400,
    fontSize: 14.sp,
    color: AppColors.onScaffold,
  );

  late TextStyle overline = TextStyle(
    fontFamily: fontFamily.defaultFontFamily(),
    fontWeight: FontWeight.w500,
    fontSize: fontFamily.onLocale(english: 10.sp, farsi: 10.sp, french: 10.sp),
    letterSpacing: 0,
    color: AppColors.onScaffold,
  );

  late TextStyle caption = TextStyle(
    fontFamily: fontFamily.defaultFontFamily(),
    fontWeight: FontWeight.w500,
    fontSize: fontFamily.onLocale( english: 11.sp, farsi: 12.sp, french: 11.sp),
    color: AppColors.onScaffold,
  );

  late TextStyle button = TextStyle(
    fontFamily: fontFamily.medium(),
    fontWeight: FontWeight.w500,
    fontSize: fontFamily.onLocale( english: 13.sp, farsi: 13.sp, french: 13.sp),
    color: AppColors.onPrimary,
  );
}
