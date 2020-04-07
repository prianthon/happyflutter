// pengiriman valur
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Todo {
  final String title;
  final String description;
  Todo(this.title, this.description);
}

void main() {
  runApp(MaterialApp(
    title: 'Kirim data Apps',
    debugShowCheckedModeBanner: false,
    home: TodosScreen(
      todos: List.generate(
        10,
          (i) => Todo(
            'Judul Berita $i',
            'Detail isi berita ke $i',
          ),
      ),
    ),
  ));
}

class TodosScreen extends StatelessWidget {
  final List<Todo> todos;

  TodosScreen({Key key, @required this.todos}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Berita'),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(todos[index].title),

            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(todo: todos[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {

  final Todo todo;
  DetailScreen({Key key, @required this.todo}):super(key:key);
  @override
  Widget build(BuildContext context) {
    // Use the Todo to create our UI
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(todo.description),
      ),
    );
  }
}