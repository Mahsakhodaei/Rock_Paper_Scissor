import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/UI/definition/color_type.dart';

void main() {
  runApp(HomeScreen());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
        body: _getBody(),
      ),
    );
  }

  Widget _getBody() {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(width: double.infinity),
          Expanded(
            flex: 3,
            child: Container(
              height: 200.0,
              color: Colors.red,
            ),
          ),
          Expanded(
            flex: 1,
            child: TextButton(
              onPressed: () {},
              child: Text('بازی'),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              height: 200.0,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
