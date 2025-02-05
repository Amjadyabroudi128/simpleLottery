
 import 'package:flutter/material.dart';
import 'package:lottery/components/appSizeHelper.dart';

import 'colors.dart';

class appTheme {
  static final ThemeData myTheme = ThemeData().copyWith(
    iconTheme: IconThemeData(
      size: componentSize.iconSize
    ),
    cardTheme: CardTheme(
      color: myColors.cardColor,
    )
  );
 }