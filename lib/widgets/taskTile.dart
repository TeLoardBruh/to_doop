import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String tasktitle;
  final Function togglecheckbox;
  TaskTile({this.isChecked, this.tasktitle, this.togglecheckbox});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        tasktitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.blueGrey,
        value: isChecked,
        onChanged: togglecheckbox,
      ),
    );
  }
}
//  void checkBoxCallBack(bool checkboxstate) {
//     setState(() {
//       isChecked = checkboxstate;
//     });
//   }
// class TaskCheckBox extends StatelessWidget {
//   final bool checkBoxState;
//   final Function togglecheckbox;
//   TaskCheckBox({this.checkBoxState, this.togglecheckbox});
//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }
