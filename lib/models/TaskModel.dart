import 'package:flutter/cupertino.dart';
import 'package:todoSimple/models/task.dart';

class TaskModel extends ChangeNotifier {
  List<Task> _taskList = [
    Task(1, 'test1'),
    Task(2, 'test2'),
    Task(3, 'test3'),
    Task(4, 'test4'),
    Task(5, 'test5'),
    Task(6, 'test6'),
    Task(7, 'test7'),
    Task(8, 'test8'),
    Task(9, 'test9'),
  ];

  int getTotalList() => _taskList.length;

  void addTask(Task task) {
    _taskList.add(task);

    notifyListeners();
  }

  String getTask(int i) {
    return _taskList[i].name;
  }
}
