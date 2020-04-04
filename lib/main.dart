// switch widget
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new application()));
}

class application extends StatefulWidget {
  @override
  _applicationState createState() => _applicationState();
}

class _applicationState extends State<application> {

  bool sbool = false;

  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
      title: 'Dummy Application',
      home: new Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: new Text('Switch Widget'),
        ),
        body: new Center(
          child: new Switch(
            value: sbool,
            onChanged: (bool sb) {
              setState(() {
                sbool=sb;
                print(sbool);
              });
            },
          ),
        ),
      ),
    );
  }
}