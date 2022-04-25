import 'package:flutter/material.dart';
import 'package:todey/task_tile.dart';

import 'task.dart';
class TaskList extends StatefulWidget {
  const TaskList({Key key}) : super(key: key);

  @override
  _TaskListState createState() => _TaskListState();
}
List<Task> tasks = [
  Task(name: "Wash Plate"),
  Task(name: "Play Ball"),
  Task(name: "Gym")
];

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context,index){
      return TaskTile(name: tasks[index].name,
        delete: (){
          setState(() {
            tasks.removeAt(index);
          });
          Navigator.pop(context);
        },
      );
    });
  }
}
