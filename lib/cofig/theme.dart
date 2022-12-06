import 'package:ahadith/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

ThemeData AppTheme() {
  return ThemeData(
      fontFamily: "Tajawal",
      primaryColor: AppColors.primaryColor,
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primaryColor)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: AppColors.primaryColor));
}
