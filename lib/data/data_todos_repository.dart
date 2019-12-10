import 'package:flutter_clean_todo/domain/entities/todo.dart';
import 'package:flutter_clean_todo/domain/repositories/todos_repository.dart';

class DataTodosRepository extends TodosRepository {
  List<Todo> todos;

  DataTodosRepository._internal() {
    todos = List<Todo>();
  }

  static DataTodosRepository _instance = DataTodosRepository._internal();
  factory DataTodosRepository() => _instance;

  @override
  Future<List<Todo>> getAllTodos() {
    // TODO: implement getAllTodos
    return null;
  }
}