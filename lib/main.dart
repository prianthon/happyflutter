import 'package:flutter/material.dart';

void main() {
  runApp(new application());
}

class application extends StatefulWidget {
  @override
  _applicationState createState() => _applicationState();
}

class _applicationState extends State<application> {

  String textButton = '';

  void method1(value) {
    setState(() {
      textButton = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Dummy Application',
      home: new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.green,
          title: new Text('Button Widget'),
        ),
          body: new Column(
              children: <Widget>[
                new RaisedButton(onPressed: ()
                {
                method1('You Press Button');
                },
                  child: new Text('Klik Button'),),
                new FlatButton(onPressed: null, child: new Text('The Flat Button')),
                new Text(textButton),
              ],
          ),
      ),
    );
  }
}