import 'package:flutter/material.dart';

class Keypad extends StatelessWidget {
  final addToOutput;
  final clear;
  final evaluate;
  final hitBackspace;
  final String magicOutput;
  bool magicCalculator;

  Keypad(
      {@required this.addToOutput,
      @required this.clear,
      @required this.evaluate,
      @required this.hitBackspace,
      @required this.magicCalculator,
      @required this.magicOutput});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      child: Column(
        // row of buttons
        children: [
          Row(
            children: [
              FlatButton(
                  color: Color.fromRGBO(14, 17, 17, 1),
                  child: Text(
                    '^',
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.blue,
                    ),
                  ),
                  padding: EdgeInsets.all(20),
                  onPressed: () => addToOutput("^"),
                  shape: CircleBorder()),
              FlatButton(
                  color: Color.fromRGBO(14, 17, 17, 1),
                  child: Text(
                    '(',
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.blue,
                    ),
                  ),
                  padding: EdgeInsets.all(20),
                  onPressed: () => addToOutput("("),
                  shape: CircleBorder()),
              FlatButton(
                  color: Color.fromRGBO(14, 17, 17, 1),
                  child: Text(
                    ')',
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.blue,
                    ),
                  ),
                  padding: EdgeInsets.all(20),
                  onPressed: () => addToOutput(")"),
                  shape: CircleBorder()),
              GestureDetector(
                onLongPress: clear,
                child: FlatButton(
                    child: Icon(
                      Icons.backspace,
                      size: 35,
                      color: Colors.blue,
                    ),
                    padding: EdgeInsets.all(20),
                    onPressed: hitBackspace,
                    shape: CircleBorder()),
              ),
            ],
          ),
          SizedBox(
            height: 7,
          ),
          Row(
            children: [
              FlatButton(
                  color: Color.fromRGBO(14, 17, 17, 1),
                  child: Text(
                    '7',
                    style: TextStyle(fontSize: 35, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  padding: EdgeInsets.all(20),
                  onPressed: () => addToOutput("7"),
                  shape: CircleBorder()),
              FlatButton(
                  color: Color.fromRGBO(14, 17, 17, 1),
                  child: Text(
                    '8',
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                    ),
                  ),
                  padding: EdgeInsets.all(20),
                  onPressed: () => addToOutput("8"),
                  shape: CircleBorder()),
              FlatButton(
                  color: Color.fromRGBO(14, 17, 17, 1),
                  child: Text(
                    '9',
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                    ),
                  ),
                  padding: EdgeInsets.all(20),
                  onPressed: () => addToOutput("9"),
                  shape: CircleBorder()),
              FlatButton(
                  color: Color.fromRGBO(14, 17, 17, 1),
                  child: Text(
                    '÷',
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.blue,
                    ),
                  ),
                  padding: EdgeInsets.all(20),
                  onPressed: () => addToOutput("/"),
                  shape: CircleBorder()),
            ],
          ),
          SizedBox(
            height: 7,
          ),
          Row(
            children: [
              FlatButton(
                  color: Color.fromRGBO(14, 17, 17, 1),
                  child: Text(
                    '4',
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                    ),
                  ),
                  padding: EdgeInsets.all(20),
                  onPressed: () => addToOutput("4"),
                  shape: CircleBorder()),
              FlatButton(
                  color: Color.fromRGBO(14, 17, 17, 1),
                  child: Text(
                    '5',
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                    ),
                  ),
                  padding: EdgeInsets.all(20),
                  onPressed: () => addToOutput("5"),
                  shape: CircleBorder()),
              FlatButton(
                  color: Color.fromRGBO(14, 17, 17, 1),
                  child: Text(
                    '6',
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                    ),
                  ),
                  padding: EdgeInsets.all(20),
                  onPressed: () => addToOutput("6"),
                  shape: CircleBorder()),
              FlatButton(
                  color: Color.fromRGBO(14, 17, 17, 1),
                  child: Text(
                    '×',
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.blue,
                    ),
                  ),
                  padding: EdgeInsets.all(20),
                  onPressed: () => addToOutput("*"),
                  shape: CircleBorder()),
            ],
          ),
          SizedBox(
            height: 7,
          ),
          Row(
            children: [
              FlatButton(
                  color: Color.fromRGBO(14, 17, 17, 1),
                  child: Text(
                    '1',
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                    ),
                  ),
                  padding: EdgeInsets.all(20),
                  onPressed: () => addToOutput("1"),
                  shape: CircleBorder()),
              FlatButton(
                  color: Color.fromRGBO(14, 17, 17, 1),
                  child: Text(
                    '2',
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                    ),
                  ),
                  padding: EdgeInsets.all(20),
                  onPressed: () => addToOutput("2"),
                  shape: CircleBorder()),
              FlatButton(
                  color: Color.fromRGBO(14, 17, 17, 1),
                  child: Text(
                    '3',
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                    ),
                  ),
                  padding: EdgeInsets.all(20),
                  onPressed: () => addToOutput("3"),
                  shape: CircleBorder()),
              FlatButton(
                  color: Color.fromRGBO(14, 17, 17, 1),
                  child: Text(
                    '+',
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.blue,
                    ),
                  ),
                  padding: EdgeInsets.all(20),
                  onPressed: () => addToOutput("+"),
                  shape: CircleBorder()),
            ],
          ),
          SizedBox(
            height: 7,
          ),
          Row(
            children: [
              FlatButton(
                  color: Color.fromRGBO(14, 17, 17, 1),
                  child: Text(
                    '0',
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                    ),
                  ),
                  padding: EdgeInsets.all(20),
                  onPressed: () => addToOutput("0"),
                  shape: CircleBorder()),
              FlatButton(
                  color: Color.fromRGBO(14, 17, 17, 1),
                  child: Text(
                    '.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                    ),
                  ),
                  padding: EdgeInsets.all(20),
                  onPressed: () => addToOutput("."),
                  shape: CircleBorder()),
              FlatButton(
                  color: Color.fromRGBO(14, 17, 17, 1),
                  child: Text(
                    '=',
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                    ),
                  ),
                  padding: EdgeInsets.all(20),
                  onPressed: evaluate,
                  shape: CircleBorder()),
              FlatButton(
                  color: Color.fromRGBO(14, 17, 17, 1),
                  child: Text(
                    '-',
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.blue,
                    ),
                  ),
                  padding: EdgeInsets.all(20),
                  onPressed: () => addToOutput("-"),
                  shape: CircleBorder()),
            ],
          ),
        ],
      ),
    );
  }
}
