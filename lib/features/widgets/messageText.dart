import 'package:flutter/material.dart';

class messageText extends StatelessWidget {
  const messageText({
    super.key,
    required this.message,
  });

  final String message;

  @override
  Widget build(BuildContext context) {
    return Text(
      message, style: TextStyle(fontSize: 18),
    );
  }
}