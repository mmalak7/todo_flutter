import 'package:todoSimple/task.dart';

class TaskCategory {
  String categoryName;
  List<Task> _taskList = [];

  TaskCategory(this.categoryName, this._taskList);
}
