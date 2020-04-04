import 'package:flutter/material.dart';

void main() {
  runApp(new application());
}

class application extends StatefulWidget {
  @override
  _applicationState createState() => _applicationState();
}

class _applicationState extends State<application> {

  String text = '';
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Dummy Application',
      home: new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.green,
          title: new Text('TextField Widget'),
        ), body: new Column(
        children: <Widget>[
          new TextField(
            onChanged: (String txt) {
              setState(() {
                text = txt;
              });
            },
            decoration: new InputDecoration(hintText: 'input username', labelText: 'Username'),
          ),
          new Text(text)
        ],
      ),
      ),
    );
  }
}