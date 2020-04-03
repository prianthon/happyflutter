import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new application()));
}

class application extends StatefulWidget {
  @override
  _applicationState createState() => _applicationState();
}

class _applicationState extends State<application>
with SingleTickerProviderStateMixin {
  
  TabController tabController;

  void initState() {
    tabController = new TabController(length: 4, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('TabBar App'),
        bottom: new TabBar(
          controller: tabController,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.home),),
            new Tab(icon: new Icon(Icons.dashboard),),
            new Tab(icon: new Icon(Icons.data_usage),),
            new Tab(icon: new Icon(Icons.close),),
          ],
        ),

      ),
      body: new TabBarView(
        controller: tabController,
        children: <Widget>[
          new Center(child: new Text('Welcome To Home'),),
          new Center(child: new Text('Welcome To Dashboard'),),
          new Center(child: new Text('Welcome To Data Usage'),),
          new Center(child: new Text('Welcome To Close'),),
        ]),
    );
  }
}