


import 'package:flutter/material.dart';

class textStyles {
  TextStyle myText(Color? color, double fontSize) {
    return TextStyle(
      color: color ?? Colors.black, //null
      fontSize: fontSize,
    );
  }
 }