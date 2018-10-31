import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Calculator',
      theme: new ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  final CalculatorButton oneButton = CalculatorButton(
    label: '1',
    action: () => print('1'),
    fillColor: Colors.grey,
  );

  final CalculatorButton twoButton = CalculatorButton(
    label: '2',
    action: () => print('2'),
    fillColor: Colors.grey,
  );

  final CalculatorButton threeButton = CalculatorButton(
    label: '3',
    action: () => print('3'),
    fillColor: Colors.grey,
  );

  final CalculatorButton fourButton = CalculatorButton(
    label: '4',
    action: () => print('4'),
    fillColor: Colors.grey,
  );

  final CalculatorButton fiveButton = CalculatorButton(
    label: '5',
    action: () => print('5'),
    fillColor: Colors.grey,
  );

  final CalculatorButton sixButton = CalculatorButton(
    label: '6',
    action: () => print('6'),
    fillColor: Colors.grey,
  );

  final CalculatorButton sevenButton = CalculatorButton(
    label: '7',
    action: () => print('7'),
    fillColor: Colors.grey,
  );

  final CalculatorButton eightButton = CalculatorButton(
    label: '8',
    action: () => print('8'),
    fillColor: Colors.grey,
  );

  final CalculatorButton nineButton = CalculatorButton(
    label: '9',
    action: () => print('9'),
    fillColor: Colors.grey,
  );

  final CalculatorButton zeroButton = CalculatorButton(
    label: '0',
    action: () => print('0'),
    fillColor: Colors.amber,
  );

  final CalculatorButton divideButton = CalculatorButton(
    label: '/',
    action: () => print('/'),
    fillColor: Colors.amber,
  );

  final CalculatorButton multiplyButton = CalculatorButton(
    label: 'X',
    action: () => print('X'),
    fillColor: Colors.amber,
  );

  final CalculatorButton minusButton = CalculatorButton(
    label: '-',
    action: () => print('-'),
    fillColor: Colors.amber,
  );

  final CalculatorButton plusButton = CalculatorButton(
    label: '+',
    action: () => print('+'),
    fillColor: Colors.amber,
  );

  final CalculatorButton clearButton = CalculatorButton(
    label: 'C',
    action: () => print('C'),
    fillColor: Colors.blue,
  );

  final CalculatorButton allClearButton = CalculatorButton(
    label: 'AC',
    action: () => print('AC'),
    fillColor: Colors.blue,
  );

  final CalculatorButton inverseButton = CalculatorButton(
    label: '+/-',
    action: () => print('+/-'),
    fillColor: Colors.blue,
  );

  final CalculatorButton percentButton = CalculatorButton(
    label: '%',
    action: () => print('%'),
    fillColor: Colors.blue,
  );

  final CalculatorButton decimalButton = CalculatorButton(
    label: '.',
    action: () => print('.'),
    fillColor: Colors.grey,
  );

  final CalculatorButton evaluateButton = CalculatorButton(
    label: '=',
    action: () => print('='),
    fillColor: Colors.amber,
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[
          DisplayArea(
            displayValue: '${_counter}',
          ),
          Row(
            children: <Widget>[
              clearButton,
              inverseButton,
              percentButton,
              divideButton,
            ],
          ),
          Row(
            children: <Widget>[
              sevenButton,
              eightButton,
              nineButton,
              multiplyButton,
            ],
          ),
          Row(
            children: <Widget>[
              fourButton,
              fiveButton,
              sixButton,
              minusButton,
            ],
          ),
          Row(
            children: <Widget>[
              oneButton,
              twoButton,
              threeButton,
              plusButton,
            ],
          ),
          Row(
            children: <Widget>[
              zeroButton,
              zeroButton,
              decimalButton,
              evaluateButton,
            ],
          ),
        ],
      ),
    );
  }
}

class DisplayArea extends StatelessWidget {
  DisplayArea({Key key, this.displayValue}) : super(key: key);
  final String displayValue;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Row(
          children: <Widget>[
            Text(
              displayValue,
              style: TextStyle(fontSize: 24.0),
            ),
          ],
        ),
      ],
    );
  }
}

class CalculatorButton extends StatelessWidget {
  CalculatorButton({Key key, this.label, this.action, this.fillColor})
      : super(key: key);
  final String label;
  final action;
  final Color fillColor;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () => action(),
      child: Text(label),
      shape: CircleBorder(),
      padding: EdgeInsets.all(15.0),
      fillColor: fillColor,
    );
  }
}
