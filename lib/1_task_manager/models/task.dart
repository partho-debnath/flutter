class Task {
  int id;
  String task;
  bool iscomplete;
  bool isfavorite;
  String created;
  String updated;

  Task({
    required this.id,
    required this.task,
    required this.iscomplete,
    required this.isfavorite,
    required this.created,
    required this.updated,
  });

  factory Task.formJson(Map<String, dynamic> json) {
    Task task = Task(
      id: json['id'],
      task: json['task'],
      iscomplete: json['iscomplete'],
      isfavorite: json['isfavorite'],
      created: json['created'],
      updated: json['updated'],
    );
    return task;
  }
}
