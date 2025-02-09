


import 'package:flutter/material.dart';

import '../features/themes/colors.dart';

class textStyles {
  TextStyle myText(Color? color, double fontSize) {
    return TextStyle(
      color: color ?? myColors.nullClr, //null
      fontSize: fontSize,
    );
  }
 }