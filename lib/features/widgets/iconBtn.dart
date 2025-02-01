import 'package:flutter/material.dart';

import '../../components/icons.dart';

class lotteryBtn extends StatelessWidget {
  final VoidCallback onPressed;
  const lotteryBtn({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: myIcons.refresh,
      onPressed: onPressed,
    );
  }
}
