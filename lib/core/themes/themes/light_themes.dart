import 'package:flutter/material.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

import '../../utils/responsive_utils.dart';
import '../colors/app_colors.dart';

ThemeData get theLightTheme {
  return ThemeData(
    fontFamily: 'Poppins',
    textSelectionTheme: const TextSelectionThemeData(
      selectionHandleColor: LightAppColors.primaryBlue,
    ),
    scaffoldBackgroundColor: Colors.white,
    primaryColor: LightAppColors.primaryBlue,
    brightness: Brightness.light,
    splashColor: Colors.transparent,
    colorScheme: const ColorScheme.light().copyWith(
      secondary: LightAppColors.secondaryOrange,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(
        color: GrayDegree.gray600,
      ),
      foregroundColor: Colors.white,
      actionsIconTheme: IconThemeData(
        color: GrayDegree.gray400,
      ),
      elevation: 0.0,
      titleTextStyle: TextStyle(
        color: GrayDegree.gray900,
        fontSize: 18,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600,
      ),
    ),
    //w
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        fixedSize: WidgetStateProperty.all(Size(
          widthPercentage(131).w,
          widthPercentage(24).w,
        )),
        alignment: Alignment.center,
        padding: WidgetStateProperty.all(
          EdgeInsets.zero,
        ),
      ),
    ),
    //
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(widthPercentage(12).w),
        borderSide: const BorderSide(
          color: GrayDegree.gray300,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(widthPercentage(12).w),
        borderSide: const BorderSide(
          color: GrayDegree.gray300,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(widthPercentage(12).w),
        borderSide: const BorderSide(
          color: LightAppColors.primaryBlue,
        ),
      ),
    ),
    //
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      circularTrackColor: LightAppColors.secondaryOrange,
      color: LightAppColors.primaryBlue,
    ),
    dropdownMenuTheme: DropdownMenuThemeData(
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: EdgeInsets.all(
          widthPercentage(12).w,
        ),
        activeIndicatorBorder: const BorderSide(
          color: LightAppColors.secondaryOrange,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widthPercentage(12).w),
          borderSide: const BorderSide(
            color: GrayDegree.gray300,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widthPercentage(12).w),
          borderSide: const BorderSide(
            color: GrayDegree.gray300,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widthPercentage(12).w),
          borderSide: const BorderSide(
            color: LightAppColors.primaryBlue,
          ),
        ),
      ),
    ),
    //
    textTheme: TextTheme(
      displayLarge: TextStyle(
        fontSize: widthPercentage(18).w,
        fontWeight: FontWeight.w600,
        fontFamily: 'Poppins',
        color: Colors.white,
      ),
      displayMedium: TextStyle(
        fontSize: widthPercentage(18).w,
        fontWeight: FontWeight.w500,
        fontFamily: 'Poppins',
        color: Colors.white,
      ),
      displaySmall: TextStyle(
        fontSize: widthPercentage(16).w,
        fontWeight: FontWeight.w600,
        fontFamily: 'Poppins',
        color: Colors.white,
      ),
      headlineMedium: TextStyle(
        fontSize: widthPercentage(16).w,
        fontWeight: FontWeight.w500,
        fontFamily: 'Poppins',
        color: Colors.white,
      ),
      headlineSmall: TextStyle(
        fontSize: widthPercentage(16).w,
        fontWeight: FontWeight.w400,
        fontFamily: 'Poppins',
        color: Colors.white,
      ),
      titleLarge: TextStyle(
        fontSize: widthPercentage(14).w,
        fontWeight: FontWeight.w600,
        fontFamily: 'Poppins',
        color: Colors.white,
      ),
      titleMedium: TextStyle(
        fontSize: widthPercentage(14).w,
        fontWeight: FontWeight.w400,
        fontFamily: 'Poppins',
        color: Colors.white,
      ),
    ),
  );
}
