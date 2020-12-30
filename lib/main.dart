import 'package:MagicCalculator/DisplayOutput.dart';
import 'package:MagicCalculator/Keypad.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String output = "";
  String magicOutput = "3301";
  bool magicCalculator = false;

  void setMagicOutput() {
    magicOutput = output;
  }

  void setMagicCalculator() {
    setState(() {
      magicCalculator = !magicCalculator;
    });
  }

  void clear() {
    setState(() {
      output = "";
    });
  }

  void addToOutput(String text) {
    setState(() {
      output += text;
    });
  }

  void evaluate() {
    setState(() {
      if (magicCalculator) {
        ContextModel cm = ContextModel();
        Parser p = Parser();
        Expression exp = p.parse(output);
        double eval = exp.evaluate(EvaluationType.REAL, cm);
        output = "$eval";
      } else {
        output = magicOutput;
      }
    });
  }

  void hitBackspace() {
    setState(() {
      output = output.substring(0, output.length - 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Magic Calculator',
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            DisplayOutput(
              setMagicOutput: setMagicOutput,
              magicOutput: magicOutput,
              output: output,
              magicCalculator: magicCalculator,
              setMagicCalculator: setMagicCalculator,
            ),
            Keypad(
                magicOutput: magicOutput,
                addToOutput: addToOutput,
                hitBackspace: hitBackspace,
                clear: clear,
                evaluate: evaluate,
                magicCalculator: magicCalculator)
          ],
        ),
      ),
    );
  }
}
