import 'package:flutter/material.dart';

void main() {
  runApp(TodoApp());
}

class TodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista de Tarefas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TaskListScreen(),
    );
  }
}

class TaskListScreen extends StatefulWidget {
  @override
  _TaskListScreenState createState() => _TaskListScreenState();
}

class _TaskListScreenState extends State<TaskListScreen> {
  List<Task> tasks = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Tarefas'),
      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(tasks[index].title),
            subtitle: Text(tasks[index].description),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final newTask = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddTaskScreen()),
          );
          if (newTask != null) {
            setState(() {
              tasks.add(newTask);
            });
          }
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class Task {
  final String title;
  final String description;

  Task({required this.title, required this.description});
}

class AddTaskScreen extends StatelessWidget {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adicionar Tarefa'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _titleController,
              decoration: InputDecoration(
                labelText: 'Título',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _descriptionController,
              decoration: InputDecoration(
                labelText: 'Descrição',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(
                  context,
                  Task(
                    title: _titleController.text,
                    description: _descriptionController.text,
                  ),
                );
              },
              child: Text('Adicionar Tarefa'),
            ),
          ],
        ),
      ),
    );
  }
}
