import 'package:flutter/material.dart';

void main() {
  runApp(new application());
}

class application extends StatefulWidget {
  @override
  _applicationState createState() => _applicationState();
}

class _applicationState extends State<application> {

  double drag = 1.0;
  void method1(value) {
    setState(() {
      drag = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Dummy Application',
      home: new Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: new Text('Drag Slider'),
        ),
        body: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Slider(value: drag,
              min: 1.0,
              max: 10.0,
              onChanged: (double val) {
                method1(val);
              }
              ),
              new Text('value : $drag'),
            ],
          ),
        ),
      ),
    );
  }
}