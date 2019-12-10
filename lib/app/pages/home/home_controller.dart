import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:flutter_clean_todo/domain/entities/todo.dart';

class HomeController extends Controller {

  List<Todo> _todoList;
  List<Todo> get todoList => _todoList;

  HomeController(): _todoList = [], super();

  @override
  void initListeners() {
    // TODO: implement initListeners
  }

  void addTodo() {
    _todoList.add(
      Todo(
        id: _todoList.length,
        title: 'Test',
        completed: false
      )
    );
    refreshUI();
  }
}
