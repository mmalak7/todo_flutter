import 'package:todoSimple/task.dart';

class TaskUtils {
  List<Task> _taskList = [];

  int getTaskListLength() {
    return _taskList.length;
  }

  void addNewTask(task) {
    _taskList.add(task);
  }
}
