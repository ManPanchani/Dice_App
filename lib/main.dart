import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DiceApp(),
    ),
  );
}

class DiceApp extends StatefulWidget {
  const DiceApp({Key? key}) : super(key: key);

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  @override
  Widget build(BuildContext context) {
    Random M1 = Random();
    int a = M1.nextInt(6);
    Random N1 = Random();
    int b = N1.nextInt(6);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "DICE APP",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        backgroundColor: Color(0xff92B4CF),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Container(
          child: Stack(
            children: [
              Row(
                children: [
                  Align(
                    alignment: Alignment(0, -0.9),
                    child: Text(
                      "    TOTAL AMOUNT =  ${a + b + 2}",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment(-0.9, 0),
                child: Image.asset(
                  "images/${a + 1}.png",
                  height: 150,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Align(
                alignment: Alignment(0.9, 0),
                child: Image.asset(
                  "images/${b + 1}.png",
                  height: 150,
                ),
              ),
              Align(
                alignment: Alignment(0, 1),
                child: InkWell(
                  onTap: () {
                    setState(() {});
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        child: Image.asset(
                          "images/Button.png",
                          height: 150,
                        ),
                      ),
                      Container(
                        child: Text(
                          "Calculator",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Color(0xff92B4CF),
    );
  }
}
