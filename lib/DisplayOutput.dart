import 'package:flutter/material.dart';

class DisplayOutput extends StatelessWidget {
  final String output;
  bool magicCalculator;
  var setMagicCalculator;
  final String magicOutput;
  var setMagicOutput;

  DisplayOutput(
      {this.output,
      this.magicCalculator,
      this.setMagicCalculator,
      this.magicOutput,
      this.setMagicOutput});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        color: Color.fromRGBO(15, 15, 15, 30),
        elevation: 5,
        child: Container(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
          alignment: Alignment.bottomRight,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: GestureDetector(
              onDoubleTap: () {
                setMagicOutput();
                final snackBar = SnackBar(
                  content: Text("Output set to $magicOutput"),
                  duration: Duration(milliseconds: 100),
                );
                Scaffold.of(context).showSnackBar(snackBar);
              },
              onLongPress: () {
                setMagicCalculator();

                final snackBar = SnackBar(
                  content: magicCalculator
                      ? Text("Magic Calculator Activated")
                      : Text("Magic Calculator Deactivated"),
                  duration: Duration(milliseconds: 100),
                );
                Scaffold.of(context).showSnackBar(snackBar);
              },
              child: Text(
                output,
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
