import 'package:flutter/material.dart';

// widget button
class CalcButton extends StatelessWidget {
  final String text;
  final double textSize;
  final Function callback;
  const CalcButton({
    Key? key,
    required this.text,
    this.textSize = 40,
    required this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: SizedBox(
        width: 65,
        height: 65,
        child: TextButton(
          onPressed: () {
            callback(text);
          },
          child: Text(
            text,
            style: TextStyle(
              fontSize: textSize,
            ),
          ),
        ),
      ),
    );
  }
}
