import 'package:flutter/material.dart';
import 'customw.dart';

void main() {
  runApp(new application());
}

class application extends StatefulWidget {
  @override
  _applicationState createState() => _applicationState();
}

class _applicationState extends State<application> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Custom Method Widget',
      home: new Scaffold(
        body: new customwidget(),
      ),
    );
  }
}