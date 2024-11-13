class Task {
  String id;
  String name;
  bool isCompleted;

  Task({required this.id, required this.name, this.isCompleted = false});

  // Convert a task to a map for Firestore
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'isCompleted': isCompleted,
    };
  }

  // Convert Firestore data to a Task object
  factory Task.fromMap(String id, Map<String, dynamic> data) {
    return Task(
      id: id,
      name: data['name'],
      isCompleted: data['isCompleted'],
    );
  }
}
