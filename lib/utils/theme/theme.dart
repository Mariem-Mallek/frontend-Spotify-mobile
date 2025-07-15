import 'package:flutter/material.dart';
import '/utils/constants/colors.dart';
import '/utils/theme/custom-themes/elevated_button_theme.dart';

class AppTheme{
  AppTheme._();
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    fontFamily: 'Poppins',
    primaryColor: const Color(0xFF1DB954),
    scaffoldBackgroundColor: TColors.light,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    fontFamily: 'Poppins',
    primaryColor: const Color(0xFF1DB954),
    scaffoldBackgroundColor: TColors.dark,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
  );

    

}