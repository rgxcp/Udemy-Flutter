import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _taskLists = [
    Task(name: 'Buy yogurt'),
  ];

  UnmodifiableListView<Task> get taskLists {
    return UnmodifiableListView(_taskLists);
  }

  int get taskCount {
    return _taskLists.length;
  }

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _taskLists.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _taskLists.remove(task);
    notifyListeners();
  }
}
