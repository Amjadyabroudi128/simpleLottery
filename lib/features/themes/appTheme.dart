
 import 'package:flutter/material.dart';
import 'package:lottery/components/appSizeHelper.dart';
import 'package:lottery/components/styles.dart';

import 'colors.dart';

class appTheme {
  static final ThemeData myTheme = ThemeData().copyWith(
    iconTheme: IconThemeData(
      size: componentSize.iconSize
    ),
    cardTheme: CardTheme(
      color: myColors.cardColor,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: myColors.again,
        textStyle: TextStyle(
          fontSize: componentSize.textSize
        )
      )
      // style: TextButton.styleFrom(
      //   textStyle: WidgetStateProperty.all(
      //     TextStyle(
      //       fontSize: componentSize.textSize
      //     ),
      //   ),
      //   foregroundColor: WidgetStateProperty.all(myColors.again)
      // )
    ),
  );
 }