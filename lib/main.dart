import 'package:flutter/material.dart';
import 'utils/theme/theme.dart';

import 'screens/test_theme/test_text.dart';
import 'screens/test_theme/test_elevateButton.dart';
import 'screens/test_theme/test_checkbox.dart';
import 'screens/test_theme/test_chip.dart';
import 'screens/test_theme/test_outlinedButton.dart';
import 'screens/test_theme/test_buttomsheet.dart';
import 'screens/test_theme/test_textformfield.dart';
import 'screens/test_theme/test_appbar.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      theme : AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: const TestTextFormField(),
    );
  }
}

 
