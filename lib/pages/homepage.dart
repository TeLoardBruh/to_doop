import 'package:flutter/material.dart';
import 'package:todoapp/model/taskModel.dart';
import 'package:todoapp/widgets/taskList.dart';

import 'addtaskPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => AddTaskPage((newTaskTitle) {
                    // print(newTaskTitle);
                    setState(() {
                      tasks.add(Task(name: newTaskTitle));
                    });
                    Navigator.pop(context);
                  }));
        },
        backgroundColor: Colors.blueGrey,
        child: Icon(Icons.add),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding:
                  EdgeInsets.only(top: 30, left: 30, right: 30, bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30,
                    child: Icon(
                      Icons.menu,
                      size: 30,
                      color: Colors.blueGrey,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Todopp',
                    style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.w800,
                        color: Colors.white),
                  ),
                  Text(
                    '${tasks.length} tasks',
                    style: TextStyle(fontSize: 15.0, color: Colors.white),
                  ),
                ],
              ),
            ),
            Container(
                child: Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )),
                child: TaskList(tasks: tasks),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
