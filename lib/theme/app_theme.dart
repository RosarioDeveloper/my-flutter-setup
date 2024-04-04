import 'package:blue/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:blue/core/exports.dart';

enum ThemeTypes {
  light,
  dark,
}

const ThemeTypes _appTheme = ThemeTypes.light;

final Map<ThemeTypes, ColorScheme> _colorSchemes = {
  ThemeTypes.light: const ColorScheme.light(
    primary: AppColors.primary,
    primaryContainer: AppColors.primaryContainer,
    errorContainer: AppColors.primary,
    onPrimaryContainer: AppColors.black800,
  ),
  ThemeTypes.dark: const ColorScheme.dark(
    primary: AppColors.primary,
    primaryContainer: AppColors.primaryContainer,
    errorContainer: AppColors.primary,
    onPrimaryContainer: AppColors.black800,
  )
};

abstract class AppTheme {
  static void changeTheme(String theme) {}

  /// Returns the current theme data.
  static ThemeData theme() {
    final scheme = _colorSchemes[_appTheme];

    return ThemeData(
      useMaterial3: true,
      fontFamily: FONT_FAMILY,
      visualDensity: VisualDensity.standard,
      colorScheme: scheme,
      textTheme: TextThemes.theme(scheme!),
    );
  }
}
