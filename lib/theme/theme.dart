import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

ThemeData theme() {
  return ThemeData(
    primaryColor: primaryColor,
    secondaryHeaderColor: secondaryColor,
    scaffoldBackgroundColor: transSecondary2,
    primarySwatch: Colors.blue,


    inputDecorationTheme: inputDecorationTheme(),
  );
}

InputDecorationTheme inputDecorationTheme() {
  return InputDecorationTheme(
    contentPadding: EdgeInsets.only(
      left: 16,
      right: 16,
      bottom: 13.5.h, // HERE THE IMPORTANT PART
      top: 13.5.h, // HERE THE IMPORTANT PART
    ),

    hintStyle: const TextStyle(color: Color(0xff666666),fontSize: 14),
    //background: #8BC53F40;


    fillColor: Colors.white,

    filled: true,
    floatingLabelBehavior: FloatingLabelBehavior.always,
    enabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(width: 1, color: primaryDarkColor),
      borderRadius: BorderRadius.all(Radius.circular(12)),
    ),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(width: 1, color:primaryDarkColor),
      borderRadius: BorderRadius.all(Radius.circular(12)),
    ),
  );
}

final TextTheme textTheme1 = TextTheme(
  displayLarge: GoogleFonts.lato(
      fontSize: 24.sp,
      fontWeight: FontWeight.w800,
      color: primaryDarkColor),
  headlineLarge: GoogleFonts.lato(
      fontSize: 18.sp,
      fontWeight: FontWeight.w800,
      color: pureBlack),
  headlineMedium: GoogleFonts.lato(
      fontSize: 16.sp,
      fontWeight: FontWeight.w700,
      color: pureBlack),
  headlineSmall:
  GoogleFonts.lato(fontSize: 16.sp, fontWeight: FontWeight.w400,color: textNormal),

  titleLarge: GoogleFonts.lato(
      fontSize: 16.sp,
      fontWeight: FontWeight.w600,
      color: textNormal),
  titleMedium: GoogleFonts.lato(
      fontSize: 14.sp,
      fontWeight: FontWeight.normal,
      color: textNormal),
  titleSmall: GoogleFonts.lato(
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
      color: textNormal),
  bodyLarge: GoogleFonts.lato(
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
      color: textNormal),
  bodyMedium: GoogleFonts.lato(
      fontSize: 10.sp,
      color: textNormal),

  bodySmall: GoogleFonts.lato(
      fontSize: 10.sp,
      color: textNormal),

);

