// Routes Widget
import 'package:flutter/material.dart';
import 'halamanlain.dart';

void main() {
  runApp(new MaterialApp(home: application()));
}

class application extends StatefulWidget {
  @override
  _applicationState createState() => _applicationState();
}

class _applicationState extends State<application> {
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: AppBar(
        title: new Text('Navigasi Drawer'),
        backgroundColor: Colors.green,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
                accountName: Text('Pri Anton Subardio'),
                accountEmail: Text('ceo@mutiarasoka.id'),
                currentAccountPicture: new CircleAvatar(backgroundColor: Colors.black26, child: new Text('P'),),
                decoration: new BoxDecoration(color: Colors.lightBlue),
                otherAccountsPictures: <Widget>[
                new CircleAvatar(backgroundColor: Colors.black26, child: new Text('Y'),),
                new CircleAvatar(backgroundColor: Colors.black26, child: new Text('W'),),
                ],
      ),
                new ListTile(title: new Text('Home Page'),
                  trailing: new Icon(Icons.home),
                    onTap: () => Navigator.of(context).push(new
                    MaterialPageRoute(builder: (BuildContext context) => new pagebaru('Welcome to Home Page'))),
                ),
                new ListTile(title: new Text('List Laptop'),
                  trailing: new Icon(Icons.laptop),
                  onTap: () => Navigator.of(context).push(new
                  MaterialPageRoute(builder: (BuildContext context) => new pagebaru('Welcome to My List Product'))),
                ),
                new ListTile(title: new Text('Close'),
                  trailing: new Icon(Icons.close),
                  onTap: (){Navigator.pop(context);},),
          ],
        ),
      ),
    );
  }
}