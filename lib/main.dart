import 'package:flutter/material.dart';
import 'package:app1/gradient_container.dart';

void main() {
  runApp(
   const MaterialApp(
      home: Scaffold(
        body: GradientContainer(colors:[Colors.blue,Colors.red]),
      ),
    ),
  );
}
