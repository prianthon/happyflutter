import 'package:flutter/material.dart';

void main() {
  runApp(new customwidget());
}

class customwidget extends StatefulWidget {
  @override
  _applicationState createState() => _applicationState();
}

class _applicationState extends State<customwidget> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.pink,
      child: new Container(
        color: Colors.yellow,
        margin: const EdgeInsets.all(15.0),
          child: new Container(
            color: Colors.purple,
            margin: const EdgeInsets.all(20.0),
              child: new Container(
                color: Colors.blue,
                margin: const EdgeInsets.all(30.0),
                  child: new Container(
                    color: Colors.green,
                    margin: const EdgeInsets.all(15.0),
                      child: methodcustom(),
                  ),
              ),
          ),
      ),
    );
  }
}
Widget methodcustom() {
  return new Container(
    color: Colors.purple,
    margin: const EdgeInsets.all(15.0),
  );
}