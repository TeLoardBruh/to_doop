import 'package:flutter/material.dart';
import 'package:todoapp/model/taskModel.dart';
import 'package:todoapp/widgets/taskTile.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  List<Task> tasks = [
    Task(
      name: 'task 1',
    ),
    Task(
      name: 'task 2',
    ),
    Task(
      name: 'task 3',
    ),
    Task(
      name: 'task 4',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          tasktitle: tasks[index].name,
          isChecked: tasks[index].isDone,
          togglecheckbox: (checkBoxCallBack) {
            setState(() {
              tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
