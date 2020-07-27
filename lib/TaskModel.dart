import 'package:flutter/cupertino.dart';
import 'package:todoSimple/task.dart';

class TaskModel extends ChangeNotifier {
  List<Task> _taskList = [];

  int getTotalList() => _taskList.length;

  void addTask(Task task) {
    _taskList.add(task);

    notifyListeners();
  }

  String getTask(int i) {
    return _taskList[i].name;
  }
}
