
import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_radius.dart';
import 'app_text_styles.dart';

class AppTheme {
  AppTheme._();

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,

      scaffoldBackgroundColor: AppColors.background,

      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primary,
        brightness: Brightness.dark,
      ).copyWith(
        primary: AppColors.primary,
        secondary: AppColors.secondary,
        surface: AppColors.surface,
        error: AppColors.error,
      ),

      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.background,
        elevation: 0,
        centerTitle: true,
        foregroundColor: AppColors.white,
      ),

      cardTheme: CardThemeData(
        color: AppColors.surface,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: AppRadius.xl,
        ),
      ),

      textTheme: TextTheme(
        displayLarge: AppTextStyles.display,
        headlineLarge: AppTextStyles.h1,
        headlineMedium: AppTextStyles.h2,
        headlineSmall: AppTextStyles.h3,
        bodyLarge: AppTextStyles.bodyLarge,
        bodyMedium: AppTextStyles.body,
        bodySmall: AppTextStyles.small,
        labelSmall: AppTextStyles.caption,
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.white,
          elevation: 0,
          minimumSize: const Size(double.infinity, 56),
          shape: const RoundedRectangleBorder(
            borderRadius: AppRadius.xl,
          ),
        ),
      ),

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.surface,

        hintStyle: const TextStyle(
          color: AppColors.grey,
        ),

        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 18,
        ),

        border: OutlineInputBorder(
          borderRadius: AppRadius.lg,
          borderSide: BorderSide.none,
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: AppRadius.lg,
          borderSide: BorderSide.none,
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: AppRadius.lg,
          borderSide: const BorderSide(
            color: AppColors.primary,
            width: 2,
          ),
        ),

        errorBorder: OutlineInputBorder(
          borderRadius: AppRadius.lg,
          borderSide: const BorderSide(
            color: AppColors.error,
          ),
        ),
      ),
    );
  }
}