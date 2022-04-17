import 'package:flutter/material.dart';
import 'package:task_management/presentation/core/theme/colors.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primarySwatch: AppColors.primary,
      brightness: Brightness.light,
      primaryColor: const Color(0xff7d65e3),
      primaryColorLight: const Color(0xffdbd4f7),
      fontFamily: 'Lato',
      secondaryHeaderColor: AppColors.secondary,
      errorColor: AppColors.error,
      cardColor: AppColors.greyScale,
      iconTheme: IconThemeData(
        color: AppColors.greyScale.shade700,
      ),
      cardTheme: CardTheme(
        color: AppColors.greyScale.shade50,
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ),
      textTheme: TextTheme(
        headline1: headline1,
        subtitle1: subtitle,
      ),
    );
  }

  static TextStyle get headline1 {
    return TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.w800,
      color: AppColors.greyScale.shade900,
    );
  }

  static TextStyle get subtitle {
    return const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w800,
    );
  }
}
