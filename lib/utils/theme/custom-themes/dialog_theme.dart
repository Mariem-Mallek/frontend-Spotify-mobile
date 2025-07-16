import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class TDialogTheme {
  TDialogTheme._();

  
  static DialogThemeData lightDialogTheme = DialogThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    backgroundColor: TColors.lightContainer,

    contentTextStyle: TextStyle(color: TColors.secondary),
  );

  
  static DialogThemeData darkDialogTheme = DialogThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    backgroundColor: TColors.darkContainer,

    contentTextStyle: TextStyle(color: TColors.white),
  );
}