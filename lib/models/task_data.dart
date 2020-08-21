import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Sugar'),
    Task(name: 'Buy Tea'),
  ];

  void addTask(Task newTask) {
    print(newTask);
    tasks.add(newTask);
    notifyListeners();
  }
}
