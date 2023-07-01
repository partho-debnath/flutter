import './task.dart';

class TaskList {
  List<Task> tasks = [];

  TaskList();

  set addNewTask(Task task) {
    tasks.add(task);
  }

  int get len {
    return tasks.length;
  }

  String getTask(int index) {
    return tasks[index].task;
  }

  void clearTaskList() {
    tasks.clear();
  }
}
