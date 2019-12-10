import '../entities/todo.dart';

abstract class TodosRepository {
  Future<List<Todo>> getAllTodos();
}
