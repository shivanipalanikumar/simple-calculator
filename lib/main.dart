import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Calculator',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _displayValue = '';
  String _ans='';
  void _display(String s) {
    setState(() {
      if (s == "AC") {
        _displayValue = '';
        _ans='';
      } 
      else if (s == "Del") {
        if (_displayValue != null && _displayValue.length > 0) {
          _displayValue = _displayValue.substring(0, _displayValue.length - 1);
        }
        else{
        _displayValue = '';}
      } 
      else if(s == "="){
        _ans = _displayValue.interpret().toString();
      }
      else {
        if(_displayValue==''){
          _ans='';
        }
        _displayValue += s;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              child: Text(_displayValue),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    ButtonTheme(
                      minWidth: 80.0,
                      height: 30.0,
                      child: RaisedButton(
                        child: Text("AC"),
                        onPressed: () => {_display("AC")},
                      ),
                    ),
                    ButtonTheme(
                      minWidth: 80.0,
                      height: 30.0,
                      child: RaisedButton(
                        child: Text("7"),
                        onPressed: () => {_display("7")},
                      ),
                    ),
                    ButtonTheme(
                      minWidth: 80.0,
                      height: 30.0,
                      child: RaisedButton(
                        child: Text("4"),
                        onPressed: () => {_display("4")},
                      ),
                    ),
                    ButtonTheme(
                      minWidth: 80.0,
                      height: 30.0,
                      child: RaisedButton(
                        child: Text("1"),
                        onPressed: () => {_display("1")},
                      ),
                    ),
                    ButtonTheme(
                      minWidth: 80.0,
                      height: 30.0,
                      child: RaisedButton(
                        child: Text("%"),
                        onPressed: () => {_display("%")},
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    ButtonTheme(
                      minWidth: 80.0,
                      height: 30.0,
                      child: RaisedButton(
                        child: Text("Del"),
                        onPressed: () => {_display("Del")},
                      ),
                    ),
                    ButtonTheme(
                      minWidth: 80.0,
                      height: 30.0,
                      child: RaisedButton(
                        child: Text("8"),
                        onPressed: () => {_display("8")},
                      ),
                    ),
                    ButtonTheme(
                      minWidth: 80.0,
                      height: 30.0,
                      child: RaisedButton(
                        child: Text("5"),
                        onPressed: () => {_display("5")},
                      ),
                    ),
                    ButtonTheme(
                      minWidth: 80.0,
                      height: 30.0,
                      child: RaisedButton(
                        child: Text("2"),
                        onPressed: () => {_display("2")},
                      ),
                    ),
                    ButtonTheme(
                      minWidth: 80.0,
                      height: 30.0,
                      child: RaisedButton(
                        child: Text("0"),
                        onPressed: () => {_display("0")},
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    ButtonTheme(
                      minWidth: 80.0,
                      height: 30.0,
                      child: RaisedButton(
                        child: Text("^"),
                        onPressed: () => {_display("^")},
                      ),
                    ),
                    ButtonTheme(
                      minWidth: 80.0,
                      height: 30.0,
                      child: RaisedButton(
                        child: Text("9"),
                        onPressed: () => {_display("9")},
                      ),
                    ),
                    ButtonTheme(
                      minWidth: 80.0,
                      height: 30.0,
                      child: RaisedButton(
                        child: Text("6"),
                        onPressed: () => {_display("6")},
                      ),
                    ),
                    ButtonTheme(
                      minWidth: 80.0,
                      height: 30.0,
                      child: RaisedButton(
                        child: Text("3"),
                        onPressed: () => {_display("3")},
                      ),
                    ),
                    ButtonTheme(
                      minWidth: 80.0,
                      height: 30.0,
                      child: RaisedButton(
                        child: Text("."),
                        onPressed: () => {_display(".")},
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    ButtonTheme(
                      minWidth: 80.0,
                      height: 30.0,
                      child: RaisedButton(
                        child: Text("/"),
                        onPressed: () => {_display("/")},
                      ),
                    ),
                    ButtonTheme(
                      minWidth: 80.0,
                      height: 30.0,
                      child: RaisedButton(
                        child: Text("*"),
                        onPressed: () => {_display("*")},
                      ),
                    ),
                    ButtonTheme(
                      minWidth: 80.0,
                      height: 30.0,
                      child: RaisedButton(
                        child: Text("-"),
                        onPressed: () => {_display("-")},
                      ),
                    ),
                    ButtonTheme(
                      minWidth: 80.0,
                      height: 30.0,
                      child: RaisedButton(
                        child: Text("+"),
                        onPressed: () => {_display("+")},
                      ),
                    ),
                    ButtonTheme(
                      minWidth: 80.0,
                      height: 30.0,
                      child: RaisedButton(
                        child: Text("="),
                        onPressed: () => {_display("=")},
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              child: Text(_ans),
            ),
          ],
        ),
      ),
    );
  }
}
