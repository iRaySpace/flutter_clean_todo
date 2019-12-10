import 'package:flutter/material.dart';

class TodoCard extends StatelessWidget {
  final String title;

  TodoCard({@required this.title});

  @override
  Widget build(BuildContext context) => Card(
    child: InkWell(
      onTap: () => ('Card'),
      child: Padding(
        padding: EdgeInsets.all(21.0),
        child: Text(this.title),
      )
    )
  );
}