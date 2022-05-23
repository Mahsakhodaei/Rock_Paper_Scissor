import 'dart:math';

import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/UI/definition/color_type.dart';

void main() {
  runApp(HomeScreen());
}

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int top = 2;
  int bottom = 3;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'vazir'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: GameColors().GameBlue,
          title: Text(
            'بازی سنگ ، کاغذ ، قیچی',
            style: TextStyle(
              fontSize: 18,
              color: GameColors().MainWhite,
            ),
          ),
          centerTitle: true,
        ),
        backgroundColor: GameColors().GameGray,
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(width: double.infinity),
              Expanded(
                flex: 3,
                child: Image(
                  image: AssetImage('images/$top.png'),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  primary: GameColors().MainWhite,
                  minimumSize: Size(150, 60),
                  backgroundColor: GameColors().GameBlue,
                ),
                onPressed: () {
                  setState(() {
                    top = Random().nextInt(3) + 1;  //(0-2) + 1 = (1-3)
                    bottom = Random().nextInt(3) + 1;
                  });
                },
                child: Text(
                  'شروع بازی',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                ),
              ),
              Expanded(
                flex: 3,
                child: Image(
                  image: AssetImage('images/$bottom.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
