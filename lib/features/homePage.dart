import 'package:flutter/material.dart';
import 'package:lottery/components/Strings.dart';
import 'package:lottery/components/containerBorders.dart';
import 'package:lottery/components/icons.dart';
import 'package:lottery/features/widgets/messageText.dart';

import 'widgets/iconBtn.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<int> lotteryNumber = [];
  String message = appStrings.winNumber;

  void theLotteryNumber() {
    setState(() {
      lotteryNumber = [1, 2, 3, 4, 5, 6, 7];
      lotteryNumber.contains(3) ? message = appStrings.Win : message = appStrings.tryAgain;
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
            SizedBox(height: 5,),
            Container(
              width: MediaQuery.of(context).size.width / 4.9,
              height: MediaQuery.of(context).size.height / 23,
              decoration: containerBorder.cDecoration,
              // color: Colors.black,
                child: lotteryBtn(onPressed: theLotteryNumber, myIcon: myIcons.refresh,)
            ),
          ],
        ),
      ),
    );
  }
}

