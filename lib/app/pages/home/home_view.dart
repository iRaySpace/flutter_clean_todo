import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

import 'home_controller.dart';
import 'widgets/todos_column.dart';

class HomeView extends View {
  @override
  _HomeViewState createState() => _HomeViewState(HomeController());
}

class _HomeViewState extends ViewState<HomeView, HomeController> {
  _HomeViewState(HomeController controller) : super(controller);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text('Home')),
    floatingActionButton: FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () => callHandler(controller.addTodo),
    ),
    body: Container(
      child: SingleChildScrollView(
        child: TodosColumn(data: controller.todoList),
      ),
    ),
  );
}
