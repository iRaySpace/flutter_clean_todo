import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:flutter_clean_todo/data/data_todos_repository.dart';
import 'package:flutter_clean_todo/domain/entities/todo.dart';

class TodoAddController extends Controller {
  final DataTodosRepository repository;

  TodoAddController(this.repository): super();

  @override
  void initListeners() {

  }

  void addTodo(String title) {
    repository.todos.add(
      Todo(
        id: repository.todos.length,
        title: title,
        completed: false,
      )
    );
    print(repository.todos.length);
  }
}
