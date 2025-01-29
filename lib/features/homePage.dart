import 'package:flutter/material.dart';
import 'package:lottery/components/Strings.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<int> lotteryNumber = [];
  String message = "the winning number is 3";

  void theLotteryNumber() {
    setState(() {
      lotteryNumber = [1,2,3,4,5,6,7];
      lotteryNumber.contains(3) ? message = appStrings.Win : message = "Try again next time";

    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Text(
               message, style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}