import 'package:flutter/material.dart';
import 'package:flutter_calculator/button.dart';
import 'package:flutter_calculator/functions.dart';

void main() {
  runApp(const CalcApp());
}

class CalcApp extends StatefulWidget {
  const CalcApp({Key? key}) : super(key: key);

  @override
  CalcAppState createState() => CalcAppState();
}

class CalcAppState extends State<CalcApp> {
  //call functions
  void callFunction(String buttonText) {
    setState(() {
      if (buttonText == 'C') {
        clear();
      } else if (buttonText == 'D') {
        delete();
      } else if (buttonText == '=') {
        evaluate();
      } else {
        editEquation(buttonText);
      }
    });
  }

//calculator page
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Calculator'),
        ),
        body: Container(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                alignment: const Alignment(1.0, 1.0),
                child: Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: Text(
                    equation,
                    style: const TextStyle(
                      fontSize: 32,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                alignment: const Alignment(1.0, 1.0),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    display,
                    style: const TextStyle(
                      fontSize: 60,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalcButton(text: 'C', callback: callFunction),
                  CalcButton(text: 'D', callback: callFunction),
                  CalcButton(text: '(', callback: callFunction),
                  CalcButton(text: ')', callback: callFunction)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalcButton(text: '7', callback: callFunction),
                  CalcButton(text: '8', callback: callFunction),
                  CalcButton(text: '9', callback: callFunction),
                  CalcButton(text: '/', callback: callFunction),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalcButton(text: '4', callback: callFunction),
                  CalcButton(text: '5', callback: callFunction),
                  CalcButton(text: '6', callback: callFunction),
                  CalcButton(text: '*', callback: callFunction),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalcButton(text: '1', callback: callFunction),
                  CalcButton(text: '2', callback: callFunction),
                  CalcButton(text: '3', callback: callFunction),
                  CalcButton(text: '-', callback: callFunction),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalcButton(text: '.', callback: callFunction),
                  CalcButton(text: '0', callback: callFunction),
                  CalcButton(text: '=', callback: callFunction),
                  CalcButton(text: '+', callback: callFunction),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
