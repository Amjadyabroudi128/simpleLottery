import 'package:flutter/material.dart';

import '../../components/icons.dart';

class lotteryBtn extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget myIcon;
  const lotteryBtn({
    super.key,
    required this.onPressed, required this.myIcon,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: myIcon,
      onPressed: onPressed,
    );
  }
}
