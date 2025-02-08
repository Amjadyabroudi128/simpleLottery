import 'package:flutter/material.dart';
import 'package:lottery/components/appSizeHelper.dart';
import 'package:lottery/features/themes/colors.dart';

class containerBorder {
  static Decoration cDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(componentSize.radiusSize),
      color: myColors.containerClr
  );
  static double myWidth(BuildContext context) {
    return MediaQuery.of(context).size.width / 4.4;
  }
  static double myHeight(BuildContext context) {
    return MediaQuery.of(context).size.width / 10;
  }
  static double boxWidth(BuildContext context) {
    return MediaQuery.of(context).size.width / 1.3;
  }
  static double boxHeight(BuildContext context) {
    return  MediaQuery.of(context).size.height * 0.05;
  }
  static EdgeInsets myPadding = EdgeInsets.all(8.0);
 }