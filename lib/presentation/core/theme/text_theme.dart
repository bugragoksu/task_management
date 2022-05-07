import 'package:flutter/material.dart';

class AppTextTheme {
  static AppTextTheme? _instance;
  static AppTextTheme? get instance => _instance ??= AppTextTheme();

  final String _baseFontFamily = 'Lato';

  TextTheme get buildLightTextTheme => ThemeData.light().textTheme.apply(
        fontFamily: _baseFontFamily,
      );

  TextStyle get _buildBaseTextStyle => TextStyle(
        fontFamily: _baseFontFamily,
        fontStyle: FontStyle.normal,
      );

  TextStyle get buildTitleXLarge => _buildBaseTextStyle.copyWith(
        fontWeight: FontWeight.w700,
        fontSize: 48,
      );

  TextStyle get buildTitleLarge => _buildBaseTextStyle.copyWith(
        fontWeight: FontWeight.w700,
        fontSize: 32,
      );

  TextStyle get buildTitleMedium => _buildBaseTextStyle.copyWith(
        fontWeight: FontWeight.w700,
        fontSize: 16,
      );

  TextStyle get buildHeading => _buildBaseTextStyle.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 16,
      );

  TextStyle get buildBodyLarge => _buildBaseTextStyle.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 16,
      );

  TextStyle get buildBodyMedium => _buildBaseTextStyle.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 16,
      );

  TextStyle get buildBodySmall => _buildBaseTextStyle.copyWith(
        fontWeight: FontWeight.w400,
        fontSize: 16,
      );

  TextStyle get buildSubheadingLarge => _buildBaseTextStyle.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 14,
      );

  TextStyle get buildSubheadingMedium => _buildBaseTextStyle.copyWith(
        fontWeight: FontWeight.w400,
        fontSize: 14,
      );

  TextStyle get buildSubheadingSmall => _buildBaseTextStyle.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 12,
      );

  TextStyle get buildButtonLarge => _buildBaseTextStyle.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 16,
      );

  TextStyle get buildButtonMedium => _buildBaseTextStyle.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 14,
      );

  TextStyle get buildCaptionLarge => _buildBaseTextStyle.copyWith(
        fontWeight: FontWeight.w400,
        fontSize: 12,
      );

  TextStyle get buildCaptionSmall => _buildBaseTextStyle.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 11,
      );
}
