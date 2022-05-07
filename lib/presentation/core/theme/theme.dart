import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_management/presentation/core/theme/colors.dart';
import 'package:task_management/presentation/core/theme/text_theme.dart';

abstract class BaseTheme {
  ThemeData get appTheme;
}

class AppTheme extends BaseTheme {
  static AppTheme? _instance;
  static AppTheme? get instance => _instance ??= AppTheme();

  @override
  ThemeData get appTheme => ThemeData(
        primaryColor: AppColors.primary,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: AppColors.secondary,
        ).copyWith(secondary: AppColors.secondary),
        errorColor: AppColors.error,
        disabledColor: AppColors.greyScale[100],
        scaffoldBackgroundColor: AppColors.greyScale[200],
        backgroundColor: AppColors.greyScale[200],
        appBarTheme: _buildAppBarTheme,
        textTheme: AppTextTheme.instance!.buildLightTextTheme,
        inputDecorationTheme: _buildInputDecorationTheme,
        elevatedButtonTheme: _buildElevatedButtonThemeData,
        outlinedButtonTheme: _buildOutlinedButtonThemeData,
        textButtonTheme: _buildTextButtonThemeData,
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: AppColors.greyScale[900],
          selectionColor: AppColors.secondary[100],
        ),
        dividerTheme: _dividerThemeData,
        radioTheme: _buildRadioTheme,
        bottomSheetTheme: _bottomSheetTheme,
        checkboxTheme: _buildCheckboxTheme,
        switchTheme: _buildSwitchTheme,
        cardTheme: _buildCardTheme,
        iconTheme: IconThemeData(
          color: AppColors.greyScale[900],
        ),
        cupertinoOverrideTheme: NoDefaultCupertinoThemeData(
          primaryColor: AppColors.secondary,
          barBackgroundColor: AppColors.greyScale.shade50,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          unselectedItemColor: AppColors.greyScale,
          selectedItemColor: AppColors.secondary,
          backgroundColor: AppColors.greyScale.shade50,
        ),
      );

  AppBarTheme get _buildAppBarTheme {
    return AppBarTheme(
      backgroundColor: AppColors.greyScale[50],
      centerTitle: true,
      elevation: 0,
      titleTextStyle: AppTextTheme.instance!.buildHeading.copyWith(
        color: AppColors.greyScale[900],
      ),
      actionsIconTheme: IconThemeData(
        color: AppColors.greyScale[900],
      ),
      iconTheme: IconThemeData(
        color: AppColors.greyScale[900],
        size: 24,
      ),
    );
  }

  BottomSheetThemeData get _bottomSheetTheme => BottomSheetThemeData(
        backgroundColor: AppColors.greyScale.shade50,
        clipBehavior: Clip.antiAlias,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
          ),
        ),
        modalBackgroundColor: AppColors.greyScale.shade50,
      );

  InputDecorationTheme get _buildInputDecorationTheme {
    final _kInputBorderRadius = BorderRadius.circular(8);
    return InputDecorationTheme(
      filled: true,
      fillColor: AppColors.greyScale[50],
      labelStyle: AppTextTheme.instance!.buildBodyMedium,
      hintStyle: AppTextTheme.instance!.buildBodyMedium.copyWith(
        color: AppColors.greyScale[500],
      ),
      errorStyle: AppTextTheme.instance!.buildCaptionLarge.copyWith(
        color: AppColors.error,
      ),
      border: OutlineInputBorder(
        borderRadius: _kInputBorderRadius,
        borderSide: BorderSide(
          color: AppColors.greyScale.shade300,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: _kInputBorderRadius,
        borderSide: BorderSide(
          color: AppColors.greyScale.shade300,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: _kInputBorderRadius,
        borderSide: BorderSide(
          color: AppColors.secondary.shade900,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: _kInputBorderRadius,
        borderSide: const BorderSide(
          color: AppColors.error,
        ),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: _kInputBorderRadius,
        borderSide: BorderSide(
          color: AppColors.greyScale.shade300,
        ),
      ),
    );
  }

  DividerThemeData get _dividerThemeData => DividerThemeData(
        thickness: 1,
        color: AppColors.greyScale.shade300,
        space: 0,
      );

  ElevatedButtonThemeData get _buildElevatedButtonThemeData {
    return ElevatedButtonThemeData(
      style: buildElevatedButtonStyle,
    );
  }

  ButtonStyle get buildElevatedButtonStyle => ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            return (states.contains(MaterialState.disabled))
                ? AppColors.greyScale.shade300
                : AppColors.secondary.shade900;
          },
        ),
        fixedSize: MaterialStateProperty.resolveWith<Size>((_) {
          return const Size(320, 48);
        }),
        elevation: MaterialStateProperty.resolveWith<double>((_) {
          return 0;
        }),
        textStyle: MaterialStateProperty.resolveWith<TextStyle>((_) {
          return AppTextTheme.instance!.buildButtonLarge;
        }),
        shape: MaterialStateProperty.resolveWith<OutlinedBorder>((_) {
          return RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          );
        }),
      );

  OutlinedButtonThemeData get _buildOutlinedButtonThemeData {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        primary: AppColors.greyScale,
        textStyle: AppTextTheme.instance!.buildButtonLarge,
        padding: const EdgeInsets.symmetric(
          vertical: 16,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: const BorderSide(
            color: AppColors.greyScale,
          ),
        ),
      ),
    );
  }

  TextButtonThemeData get _buildTextButtonThemeData {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: AppColors.secondary.shade900,
        textStyle: AppTextTheme.instance!.buildBodyMedium,
      ),
    );
  }

  RadioThemeData get _buildRadioTheme {
    return RadioThemeData(
      fillColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return AppColors.greyScale.shade500;
          } else {
            return AppColors.greyScale.shade900;
          }
        },
      ),
    );
  }

  CheckboxThemeData get _buildCheckboxTheme {
    return CheckboxThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      checkColor: MaterialStateProperty.resolveWith<Color>((_) {
        return AppColors.greyScale.shade50;
      }),
      fillColor: MaterialStateProperty.resolveWith<Color>((_) {
        return AppColors.greyScale.shade900;
      }),
    );
  }

  SwitchThemeData get _buildSwitchTheme {
    return SwitchThemeData(
      thumbColor: MaterialStateProperty.resolveWith<Color>((_) {
        return AppColors.greyScale.shade50;
      }),
      trackColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return AppColors.success.shade300;
          } else {
            return AppColors.greyScale.shade400;
          }
        },
      ),
    );
  }

  CardTheme get _buildCardTheme {
    return CardTheme(
      elevation: 2,
      clipBehavior: Clip.antiAlias,
      shadowColor: Colors.black.withOpacity(0.5),
      color: AppColors.greyScale[50],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
