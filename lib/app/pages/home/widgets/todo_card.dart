import 'package:flutter/material.dart';

class TodoCard extends StatelessWidget {
  final String title;
  final Function() onTap;

  TodoCard({@required this.title, @required this.onTap});

  @override
  Widget build(BuildContext context) => Card(
    child: InkWell(
      onTap: this.onTap,
      child: Padding(
        padding: EdgeInsets.all(21.0),
        child: Text(this.title),
      )
    )
  );
}