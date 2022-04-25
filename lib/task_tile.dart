import 'package:flutter/material.dart';

import 'task.dart';



class TaskTile extends StatefulWidget {
  final String name;
  final Function delete;

  const TaskTile({Key key, this.name, this.delete}) : super(key: key);

  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 320,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            spreadRadius: 3,
            blurRadius: 2,
            color: Colors.grey.withOpacity(0.1),
            offset: Offset(0, 3.0))
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(widget.name),
          IconButton(
              icon: Icon(
                Icons.delete,
                color: Colors.red,
              ),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      content: Text(
                          "Are you sure you want to delete this task?"),
                      actions: [
                        FlatButton(
                            color: Colors.purple.shade400,
                            onPressed: widget.delete,
                            child: Text("Yes")),
                        FlatButton(
                            color: Colors.purple.shade400,
                            onPressed: () {Navigator.pop(context);},
                            child: Text("No"))
                      ],
                    ));
              })
        ],
      ),
    );
  }
}
