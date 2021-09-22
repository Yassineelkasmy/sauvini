import 'package:sauvini/presentation/core/theme_valules.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData mainThemeData() {
  return ThemeData.light().copyWith(
    secondaryHeaderColor: kPrimaryColor,
    iconTheme: const IconThemeData(
      color: kPrimaryColor,
    ),
    bottomAppBarColor: kPrimaryColor,
    colorScheme: const ColorScheme.light().copyWith(
      primary: kPrimaryColor,
    ),
    primaryIconTheme: const IconThemeData(color: kPrimaryColor),
    primaryColor: Colors.black,
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: kPrimaryColor,
    ),
    scaffoldBackgroundColor: const Color(0xFFFCFEFF),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyle(
        fontFamily: GoogleFonts.montserrat().fontFamily,
        fontSize: 14.sp,
      ),
      focusColor: kPrimaryColor,
      focusedBorder: UnderlineInputBorder(
        borderRadius: BorderRadius.circular(5.r),
        borderSide: BorderSide(
          color: kPrimaryColor,
          width: 2.w,
        ),
      ),
      border: UnderlineInputBorder(
        borderRadius: BorderRadius.circular(5.r),
        borderSide: const BorderSide(
          width: 0,
        ),
      ),
    ),
    primaryTextTheme: TextTheme(
      bodyText1: TextStyle(
        fontFamily: GoogleFonts.montserrat().fontFamily,
        color: Colors.black87,
        fontSize: 14.sp,
      ),
      bodyText2: TextStyle(
        fontFamily: GoogleFonts.montserrat().fontFamily,
      ),
      headline1: TextStyle(
        fontFamily: GoogleFonts.montserrat().fontFamily,
        fontWeight: FontWeight.bold,
        fontSize: 20.sp,
        color: Colors.black87,
      ),
      subtitle1: TextStyle(
        fontFamily: GoogleFonts.montserrat().fontFamily,
        fontSize: 14.sp,
        color: Colors.black54,
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: kPrimaryColor,
    ),
  );
}
