import 'package:flutter/material.dart';
import 'package:blue/core/exports.dart';

abstract class TextThemes {
  static TextTheme theme(ColorScheme colorScheme) => TextTheme(
        bodySmall: const TextStyle(
          color: AppColors.secondary700,
          fontSize: 10,
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w400,
        ),
        displayMedium: TextStyle(
          color: colorScheme.primary,
          fontSize: 48,
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w700,
        ),
        titleLarge: const TextStyle(
          color: AppColors.black900,
          fontSize: 20,
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w700,
        ),
        titleSmall: TextStyle(
          color: colorScheme.primaryContainer.withOpacity(1),
          fontSize: 14,
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w600,
        ),
      );
}

// abstract class AppTextStyle {}
