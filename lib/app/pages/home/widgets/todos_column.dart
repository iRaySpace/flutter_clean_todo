import 'package:flutter/material.dart';
import 'package:flutter_clean_todo/domain/entities/todo.dart';
import 'todo_card.dart';

class TodosColumn extends StatelessWidget {
  final List<Todo> data;
  TodosColumn({@required this.data});

  List<Widget> dataToWidgets() {
    return data.map((todo) => TodoCard(title: todo.title)).toList();
  }

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: dataToWidgets(),
  );
}
