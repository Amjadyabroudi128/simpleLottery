import 'package:flutter/material.dart';

import '../themes/colors.dart';

class textMessage extends StatelessWidget {
  const textMessage({
    super.key,
    required this.message,
    required this.currentNumber,
  });

  final String message;
  final int currentNumber;

  @override
  Widget build(BuildContext context) {
    return Text(message,style: TextStyle(fontSize: 19,
        color: currentNumber == 3 ? myColors.winColor : null ),);
  }
}
