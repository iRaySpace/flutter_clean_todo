import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

import 'todo_add_controller.dart';
import 'widgets/todo_add_form.dart';

class TodoAddView extends View {
  @override
  _TodoAddViewState createState() => _TodoAddViewState(TodoAddController());
}

class _TodoAddViewState extends ViewState<TodoAddView, TodoAddController> {
  _TodoAddViewState(TodoAddController controller) : super(controller);
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text('Todo Add')),
    body: Container(
      child: TodoAddForm(
        onAdd: (value) {
          print(value);
        },
      ),
    ),
  );
}
