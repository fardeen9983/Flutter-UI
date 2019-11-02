import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  double val = 0;
  String value = "0", operation = '';
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double btnSize = size.width / 4, height = size.height - (btnSize * 5);
    double _margin = height / 4;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
              child: Container(
            padding: EdgeInsets.symmetric(vertical: _margin),
            constraints: BoxConstraints.expand(height: height),
            child: Container(
              padding: EdgeInsets.all(32),
              constraints: BoxConstraints.expand(height: height - _margin),
              child: Text(
                val.toString() + " " + operation,
                style: TextStyle(fontWeight: FontWeight.w200, fontSize: 48.0),
                textAlign: TextAlign.right,
              ),
            ),
          )),
          keypad()
        ],
      ),
    );
  }

  keypad() {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    onPressed: () => input(15),
                    child: Text("CE"),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    onPressed: () => input(1),
                    child: Text("1"),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    onPressed: () => input(2),
                    child: Text("2"),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    onPressed: () => input(3),
                    child: Text("3"),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    onPressed: () => input(10),
                    child: Text("/"),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    onPressed: () => input(4),
                    child: Text("4"),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    onPressed: () => input(5),
                    child: Text("5"),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    onPressed: () => input(6),
                    child: Text("6"),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    onPressed: () => input(11),
                    child: Text("*"),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    onPressed: () => input(7),
                    child: Text("7"),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    onPressed: () => input(8),
                    child: Text("8"),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    onPressed: () => input(9),
                    child: Text("9"),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    onPressed: () => input(12),
                    child: Text("+"),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    onPressed: () => input(0),
                    child: Text("0"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  onPressed: () => input(14),
                  child: Text("="),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  onPressed: () => input(13),
                  child: Text("-"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  input(int op) {
    switch (op) {
      case 1:
        setState(() {
          val = val * 10 + 1;
        });
        break;
      case 2:
        setState(() {
          val = val * 10 + 2;
        });
        break;
      case 3:
        setState(() {
          val = val * 10 + 3;
        });
        break;
      case 4:
        setState(() {
          val = val * 10 + 4;
        });
        break;
      case 5:
        setState(() {
          val = val * 10 + 5;
        });
        break;
      case 6:
        setState(() {
          this.val = this.val * 10 + 6;
        });
        break;
      case 7:
        setState(() {
          this.val = this.val * 10 + 7;
        });
        break;
      case 8:
        setState(() {
          this.val = this.val * 10 + 8;
        });
        break;
      case 9:
        setState(() {
          this.val = this.val * 10 + 9;
        });
        break;
      case 0:
        setState(() {
          this.val = this.val * 10;
        });
        break;
      case 10:
        setState(() {
          operation = '/';
        });
        break;
      case 11:
        setState(() {
          operation = '*';
        });
        break;
      case 12:
        setState(() {
          operation = '+';
        });
        break;
      case 13:
        setState(() {
          operation = '-';
        });
        break;
      case 14:
        setState(() {});
        break;
      case 15:
        setState(() {
          value ="0";
          operation ="";
          val =0;
        });
        break;
    }
  }
}
