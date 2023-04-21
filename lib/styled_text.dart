import 'package:flutter/material.dart';

// we have created a custom widget to display text ,so that we can reuse it when needed;

class StyleText extends StatelessWidget {
  final String text;  // since text variable will not be changed after its decleared its decleared as final variable
  const StyleText(this.text, {super.key});

  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 30,
      ),
    );
  }
}
