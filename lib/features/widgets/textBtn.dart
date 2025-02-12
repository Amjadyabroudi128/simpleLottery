import 'package:flutter/material.dart';

import '../../components/Strings.dart';
import '../../components/appSizeHelper.dart';
import '../../components/styles.dart';
import '../themes/colors.dart';

TextButton buildTextButton(void Function() theLotteryNumber) {
  return TextButton(
    onPressed: theLotteryNumber,
    child: Text(appStrings.Again,
    ),
  );
}