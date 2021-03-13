import 'package:flutter/material.dart';

class AddTaskPage extends StatelessWidget {
  String newTasktitle;
  final Function addTaskCallBack;
  AddTaskPage(this.addTaskCallBack);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Text(
                  "Add task",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (newText) {
                  newTasktitle = newText;
                },
              ),
              FlatButton(
                onPressed: () {
                  // print(newTasktitle);
                  addTaskCallBack(newTasktitle);
                },
                child: Text(
                  "ADD",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blueGrey,
              )
            ],
          ),
        ),
      ),
    );
  }
}
