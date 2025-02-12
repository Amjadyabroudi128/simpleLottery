import 'package:flutter/material.dart';

import '../../components/Strings.dart';

TextButton buildTextButton(void Function() theLotteryNumber) {
  return TextButton(
    onPressed: theLotteryNumber,
    child: Text(appStrings.Again,
    ),
  );
}