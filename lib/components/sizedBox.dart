import 'package:flutter/cupertino.dart';

class spaceBox extends StatelessWidget {
  final double? height;
  final double? width;
  const spaceBox({super.key, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: height,
    );
  }
}
