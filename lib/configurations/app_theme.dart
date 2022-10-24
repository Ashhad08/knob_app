import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppTheme {
  static ThemeData kThemeData(BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: AppColors.kScaffoldColor,
      dividerColor: const Color(0xffA1A5C1),
      inputDecorationTheme: InputDecorationTheme(
        errorStyle: GoogleFonts.raleway(
          fontWeight: FontWeight.w400,
          fontSize: 12,
        ),
        hintStyle: GoogleFonts.raleway(
          color: AppColors.kInputFieldTextColor,
          fontWeight: FontWeight.w400,
          fontSize: 12,
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide.none),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide.none),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide.none),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide.none),
        border: InputBorder.none,
      ),
      appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.kScaffoldColor,
          elevation: 0,
          titleSpacing: 0,
          iconTheme: IconThemeData(color: AppColors.kPrimaryColor)),
      colorScheme: ColorScheme.fromSeed(
        brightness: Brightness.light,
        seedColor: AppColors.kPrimaryColor,
      ),
      textTheme: GoogleFonts.ralewayTextTheme(
        Theme.of(context).textTheme.apply().copyWith(
              headlineSmall: GoogleFonts.raleway(
                fontSize: 25,
                color: AppColors.kSecondaryColor,
                fontWeight: FontWeight.w500,
              ),
              bodySmall: GoogleFonts.raleway(
                color: AppColors.kSecondaryColor,
              ),
            ),
      ),
    );
  }
}
