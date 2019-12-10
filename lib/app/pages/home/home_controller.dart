import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:flutter_clean_todo/data/data_todos_repository.dart';
import 'package:flutter_clean_todo/domain/entities/todo.dart';

class HomeController extends Controller {
  final DataTodosRepository repository;

  HomeController(this.repository): super();

  @override
  void initListeners() {
    // TODO: implement initListeners
  }

  List<Todo> get todoList => this.repository.todos;
}
