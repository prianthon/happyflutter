import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new Application()));
}

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {

  List<int> itemgrid = new List();

  @override
  void initState() {
    for (int i = 0; i < 30; i++)
      itemgrid.add(i);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new GridView.builder(
        itemCount: itemgrid.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4),
        itemBuilder: (BuildContext context ,int
            index) {
          return new Card(
          color: Colors.blue,
          child: new Padding(padding: const EdgeInsets.all(25.0)),
          );
          })
    );
  }
}