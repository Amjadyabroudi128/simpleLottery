import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lottery/components/Strings.dart';
import 'package:lottery/components/containerBorders.dart';
import 'package:lottery/components/icons.dart';
import 'package:lottery/components/sizedBox.dart';
import 'package:lottery/features/themes/colors.dart';
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
              width: containerBorder.boxWidth(context), // Set desired width
              child: IntrinsicHeight(
                child: Card(
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          currentNumber.toString(),
                          style: TextStyle(
                            fontSize: 22,
                            color: currentNumber == 3 ? myColors.winColor : null,
                          ),
                        ),
                      ),
                      SizedBox(height: 6,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: containerBorder.myWidth(context),
                          height: containerBorder.myHeight(context),
                          decoration: containerBorder.cDecoration,
                          child: currentNumber == 3
                              ? TextButton(
                            onPressed: theLotteryNumber,
                            child: Text(appStrings.Again, style: TextStyle(color: Colors.white)),
                          )
                              : lotteryBtn(
                            onPressed: theLotteryNumber,
                            myIcon: myIcons.refresh,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
             )
               ],
        ),
      ),
    );
  }
}

