class Todo {
  final int id;
  final String title;
  final bool completed;
  Todo({this.id, this.title, this.completed});

  @override
  String toString() => '$id, $title, $completed';
}
