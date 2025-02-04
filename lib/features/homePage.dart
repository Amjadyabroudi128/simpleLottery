import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lottery/components/Strings.dart';
import 'package:lottery/components/containerBorders.dart';
import 'package:lottery/components/icons.dart';
import 'package:lottery/components/sizedBox.dart';
import 'package:lottery/features/widgets/messageText.dart';

import 'widgets/iconBtn.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<int> lotteryNumber = [1, 2, 3, 4, 5, 6, 7];
  int currentNumber = 0;
  String message = appStrings.winNumber;

  void theLotteryNumber() {
    setState(() {
      currentNumber = lotteryNumber[Random().nextInt(lotteryNumber.length)];
      currentNumber == 3 ? message = appStrings.Win : message = appStrings.tryAgain;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            messageText(message: message),
            spaceBox(height: 6,),
            SizedBox(
              width: 150, // Set desired width
              height: 40, // Set desired height
              child: Card(
                color: Colors.grey[350],
                child: Center(
                  child: Text("Hello"),
                ),
              ),
            ),
            Container(
              width: containerBorder.myWidth(context),
              height: containerBorder.myHeight(context),
              decoration: containerBorder.cDecoration,
                child: lotteryBtn(onPressed: theLotteryNumber, myIcon: myIcons.refresh,)
            ),
          ],
        ),
      ),
    );
  }
}

