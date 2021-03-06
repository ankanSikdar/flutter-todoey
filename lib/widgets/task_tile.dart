import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile(
      {this.taskTitle,
      this.isChecked,
      this.checkBoxCallBack,
      this.longPressCallBack});

  final bool isChecked;
  final String taskTitle;
  final Function checkBoxCallBack;
  final Function longPressCallBack;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          fontSize: 18.0,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: checkBoxCallBack,
        activeColor: Colors.lightBlueAccent,
      ),
      onLongPress: longPressCallBack,
    );
  }
}
