import 'package:flutter/material.dart';
import '/utils/constants/colors.dart';
import '/utils/theme/custom-themes/elevated_button_theme.dart';
import '/utils/theme/custom-themes/appbar_theme.dart';
import '/utils/theme/custom-themes/buttom_sheet_theme.dart';
import '/utils/theme/custom-themes/checkbox_theme.dart';
import '/utils/theme/custom-themes/chip_theme.dart';
import '/utils/theme/custom-themes/dialog_theme.dart';
import '/utils/theme/custom-themes/outlined_button_theme.dart';
import '/utils/theme/custom-themes/text_button_theme.dart';
import '/utils/theme/custom-themes/textformfield_theme.dart';



class AppTheme{
  AppTheme._();
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    fontFamily: 'Poppins',
    primaryColor: const Color(0xFF1DB954),
    scaffoldBackgroundColor: TColors.light,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
    chipTheme: TChipTheme.lightChipTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    textButtonTheme: TTextButtonTheme.lightTextButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,

  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    fontFamily: 'Poppins',
    primaryColor: const Color(0xFF1DB954),
    scaffoldBackgroundColor: TColors.dark,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
    chipTheme: TChipTheme.darkChipTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    textButtonTheme: TTextButtonTheme.darkTextButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
  );

    

}