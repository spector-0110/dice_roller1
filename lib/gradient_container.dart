// import 'package:app1/styled_text.dart';
import 'package:app1/dice_roller.dart';
import 'package:flutter/material.dart';

// we are passing colors to this widget using  a constructor so that this widget can be reuseable
class GradientContainer extends StatelessWidget {
  const GradientContainer({required this.colors, super.key});
  final List<Color> colors;
  //since a list of color is passed it can be done through passing a individual colors as parameters
  

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: colors,
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
      )),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
