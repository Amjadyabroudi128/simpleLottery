import 'package:flutter/cupertino.dart';

class spaceBox extends StatelessWidget {
  final double height;
  final double width;
  const spaceBox({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: height,
    );
  }
}
