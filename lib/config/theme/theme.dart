import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_color.dart';

const inputBorderRadius = 10.0;

ColorScheme appColorScheme = const ColorScheme(
  brightness: Brightness.light,
  primary: AppColor.primaryColor,
  onPrimary: Colors.white,
  secondary: AppColor.secondaryColor,
  onSecondary: AppColor.onSecondaryColor,
  error: AppColor.errorColor,
  onError: AppColor.onErrorColor,
  background: AppColor.backgroundColor,
  onBackground: AppColor.onBackgroundColor,
  surface: AppColor.surfaceColor,
  onSurface: AppColor.primaryTextColor,
);
final lightTheme = ThemeData(
  colorScheme: appColorScheme,
  useMaterial3: true,
  brightness: Brightness.light,
  //download google font from internet
  // fontFamily: GoogleFonts.inter().fontFamily,
  //app bar customization
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white,
    centerTitle: true,
    titleTextStyle:
        TextStyle(color: AppColor.lightcontainercolor, fontSize: 16),
    elevation: 0,
  ),
  //color of app
  scaffoldBackgroundColor: AppColor.scafoldColorLight,
  primaryColor: AppColor.primaryColor,
  cardColor: AppColor.lightcontainercolor,

  // text styling for headlines, titles, bodies of text, and more.
  //change font size and color here ..to use Theme.of(context).headline1
  dialogTheme: DialogTheme(
      backgroundColor: AppColor.whiteColor,
      titleTextStyle: GoogleFonts.poppins(
          color: AppColor.blackColor,
          fontSize: 16,
          letterSpacing: 0.25,
          fontWeight: FontWeight.w600),
      contentTextStyle: GoogleFonts.poppins(
          color: AppColor.blackColor,
          fontSize: 14,
          letterSpacing: 0.25,
          fontWeight: FontWeight.w400),
      surfaceTintColor: Colors.white),

  textTheme: TextTheme(
    displayLarge: GoogleFonts.inter(
        fontSize: 96, letterSpacing: 0.26, fontWeight: FontWeight.w300),
    displayMedium: GoogleFonts.inter(
        fontSize: 60, letterSpacing: 0.0, fontWeight: FontWeight.w300),
    displaySmall: GoogleFonts.inter(
        fontSize: 48, letterSpacing: 0.15, fontWeight: FontWeight.w400),
    headlineLarge: GoogleFonts.inter(
        fontSize: 34, letterSpacing: 0.26, fontWeight: FontWeight.w400),
    headlineMedium: GoogleFonts.inter(
        fontSize: 24, letterSpacing: 0.0, fontWeight: FontWeight.w600),
    headlineSmall: GoogleFonts.inter(
        fontSize: 20, letterSpacing: 0.15, fontWeight: FontWeight.w400),
    bodyLarge: GoogleFonts.inter(
        fontSize: 16, letterSpacing: 0.5, fontWeight: FontWeight.w400),
    bodyMedium: GoogleFonts.inter(
        fontSize: 14, letterSpacing: 0.25, fontWeight: FontWeight.w400),
    bodySmall: GoogleFonts.inter(
        fontSize: 12, letterSpacing: 0.15, fontWeight: FontWeight.w400),
    labelLarge: GoogleFonts.inter(
        fontSize: 16, letterSpacing: 1.25, fontWeight: FontWeight.w400),
    labelMedium: GoogleFonts.inter(
        fontSize: 14, letterSpacing: 0.4, fontWeight: FontWeight.w500),
    labelSmall: GoogleFonts.inter(
        fontSize: 12, letterSpacing: 0.15, fontWeight: FontWeight.w400),
  ),

  datePickerTheme: const DatePickerThemeData(
    backgroundColor: Colors.white,
    rangePickerBackgroundColor: Colors.white,
    rangePickerHeaderBackgroundColor: AppColor.primaryColor,
    headerBackgroundColor: AppColor.primaryColor,
    rangePickerHeaderForegroundColor: AppColor.primaryColor,
    rangeSelectionBackgroundColor: AppColor.primaryColor,
    headerForegroundColor: Colors.black,
    rangePickerSurfaceTintColor: Colors.black,
    surfaceTintColor: Colors.black,
    rangePickerShadowColor: Colors.purple,
    rangePickerHeaderHeadlineStyle: TextStyle(fontSize: 15),
    rangePickerHeaderHelpStyle: TextStyle(fontSize: 20),
    headerHeadlineStyle: TextStyle(fontSize: 15),
    headerHelpStyle: TextStyle(fontSize: 20),
  ),
  chipTheme: const ChipThemeData(checkmarkColor: Colors.white),
  inputDecorationTheme: InputDecorationTheme(
    isDense: true,
    fillColor: Colors.grey.shade200,
    filled: true,
    contentPadding: const EdgeInsets.fromLTRB(12, 11, 10, 11),
    hintStyle: const TextStyle(fontSize: 12),
    // labelStyle: TextStyle(fontSize: 13.sp),

    focusedErrorBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: AppColor.secondaryTextColor, width: 1),
      borderRadius: BorderRadius.all(
        Radius.circular(inputBorderRadius),
      ), //error border color in inputfiled
    ),

    errorStyle: const TextStyle(
        color: AppColor.errorColor), //error text color in inputfiled
    errorBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: AppColor.errorColor, width: 1),
      borderRadius: BorderRadius.all(
        Radius.circular(inputBorderRadius),
      ), //error border color in inputfiled
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey.shade200, width: 1),
      borderRadius: const BorderRadius.all(
        Radius.circular(inputBorderRadius),
      ),
    ),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: AppColor.secondaryTextColor, width: 1),
      borderRadius: BorderRadius.all(
        Radius.circular(inputBorderRadius),
      ),
    ),
  ),
);
