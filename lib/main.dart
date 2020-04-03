import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new Application()));
}

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        alignment: Alignment.center,
        children: <Widget>[
          new Card(color: Colors.red,child: new Padding(padding: const EdgeInsets.all(250.0)),),
          new Card(color: Colors.yellow,child: new Padding(padding: const EdgeInsets.all(200)),),
          new Card(color: Colors.green,child: new Padding(padding: const EdgeInsets.all(150.0)),),
          new Card(color: Colors.blue,child: new Padding(padding: const EdgeInsets.all(100.0)),),
          new Card(color: Colors.black,child: new Padding(padding: const EdgeInsets.all(20.0)),),
        ],
      ),
    );
  }
}