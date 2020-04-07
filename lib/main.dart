// snackbar
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {

  final GlobalKey<ScaffoldState> skey = new
  GlobalKey<ScaffoldState>();

  void method1() {
    skey.currentState.showSnackBar(
        new SnackBar(content: new Text('this is Snackbar')));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Snackbar'),
      ),
      key: skey,
      body: new Center(
        child: new RaisedButton(onPressed: () {
          method1();
        },
          child: new Text('Snackbar'),),
      ),
    );
  }
}