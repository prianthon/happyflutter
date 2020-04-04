import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: application()));
}

class application extends StatefulWidget {
  @override
  _applicationState createState() => _applicationState();
}

class _applicationState extends State<application> {

  void dialog() {
    showDialog(
      context: context,
      child: new AlertDialog(
        title: new Text('Warning'),
        content: new Text('Anda yakin ingin keluar'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.close), onPressed: () {Navigator.pop(context);})
        ],
      ));
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Alert Dialog'),
      ),
      body: new Center(
        child: new RaisedButton(
          onPressed: (){dialog();},
          child: new Text('Alert Dialog'),),
      ),
    );
  }
}