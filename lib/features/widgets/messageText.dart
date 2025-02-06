import 'package:flutter/material.dart';
import 'package:lottery/features/themes/colors.dart';

import '../../components/styles.dart';

class messageText extends StatelessWidget {
   messageText({
    super.key,
    required this.message,
  });
  final String message;

  @override
  Widget build(BuildContext context) {
    return Text(
      message,  style: textStyles().myText(myColors.textColor, 19),
    );
  }
}