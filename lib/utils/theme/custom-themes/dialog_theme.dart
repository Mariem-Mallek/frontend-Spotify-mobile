import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class TDialogTheme {
  TDialogTheme._();

  
  static DialogTheme lightDialogTheme = DialogTheme(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    backgroundColor: TColors.lightContainer,

    contentTextStyle: TextStyle(color: TColors.secondary),
  );


  static DialogTheme darkDialogTheme = DialogTheme(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    backgroundColor: TColors.darkContainer,

    contentTextStyle: TextStyle(color: TColors.white),
  );
}