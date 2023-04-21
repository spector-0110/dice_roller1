import 'package:flutter/material.dart';
import 'dart:math';

var randomiser = Random(); //memory optimisation can be done, its wont be requiered to reallocate memory to function multiple times 

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceState = 2;
  // used to store active dice state

  void rollDice() {
    // function to change the state of dice
    setState(() {
      // set state function is used to update the changed values in the UI

      // currentDiceState = Random().nextInt(6) + 1;
      currentDiceState = randomiser.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      //here we introduced column so that we can have multiple items

      mainAxisSize: MainAxisSize.min,
      // done so that items can be at center else column widgets takes all the space from top to buttom of the screen

      children: [
        Image.asset(
          'assets/images/dice-$currentDiceState.png',
          width: 200,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              backgroundColor: Colors.cyanAccent,
              foregroundColor: Colors.black,
              elevation: 30,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
              textStyle: const TextStyle(
                fontSize: 20,
              )),
          child: const Text('Roll'),
        ),
      ],
    );
  }
}
