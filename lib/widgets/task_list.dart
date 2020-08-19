import 'package:flutter/material.dart';

import 'package:todoey/widgets/task_tile.dart';
import 'package:todoey/models/task.dart';

class TaskList extends StatelessWidget {
  TaskList({this.tasks, this.change});

  final tasks;
  final change;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: tasks[index].name,
          isChecked: tasks[index].isDone,
          checkBoxCallBack: (checkBoxState) {
            change(index);
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
