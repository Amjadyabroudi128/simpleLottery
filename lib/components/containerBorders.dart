import 'package:flutter/material.dart';
import 'package:lottery/features/themes/colors.dart';

class containerBorder {
  static Decoration cDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: myColors.containerClr
  );
  static double myWidth(BuildContext context) {
    return MediaQuery.of(context).size.width / 4.9;
  }
  static double myHeight(BuildContext context) {
    return MediaQuery.of(context).size.width / 23;
  }
 }