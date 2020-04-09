// pengembalian data 
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Pengembalian Data',
    home: HomeScreen(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pengembalian Data Apps'),
        backgroundColor: Colors.green,
      ),
      body: Center(child: SelectionButton()),
    );
  }
}

class SelectionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        _navigateAndDisplaySelection(context);
      },
      child: Text('Silahkan Tekan tombol untuk memilih'),
    );
  }
  final result = await Navigator.push(
      context,
      MaterialPageRoute(builder:(context) => SelectionScreen()),
      );
  Scaffold.of(context)
  ..removeCurrentSnackBar()
  ..showSnackBar(SnackBar(content: Text("$result")));
}
}

class SelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Silahkan Pilih'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {
                  Navigator.pop(context,'Anda Memilih Yes!');
                },
                child: Text('Yes!'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {
                  Navigator.pop(context,'Anda Memilih No.');
                },
                child: Text('No.'),
              ),
            )
          ],
        ),
      ),
    );
  }
}