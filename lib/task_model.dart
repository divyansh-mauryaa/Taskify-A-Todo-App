class Task {
  String name;
  bool isCompleted;

  Task({required this.name, this.isCompleted = false});

  Task.fromJson(String json)
      : name = json.split(',')[0],
        isCompleted = json.split(',')[1] == 'true';

  String toJson() => '$name,$isCompleted';
}
