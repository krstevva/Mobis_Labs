class Exam {
  int id;
  String subjectName;
  DateTime dateTime;
  List<String> rooms;
  String description;

  Exam({
    required this.id,
    required this.subjectName,
    required this.dateTime,
    required this.rooms,
    required this.description,
  });

  Exam.fromJson(Map<String, dynamic> data)
      : id = data['id'],
        subjectName = data['subjectName'],
        dateTime = DateTime.parse(data['dateTime']),
        rooms = List<String>.from(data['rooms']),
        description = data['description'];

  Map<String, dynamic> toJson() => {
    'id': id,
    'subjectName': subjectName,
    'dateTime': dateTime.toIso8601String(),
    'rooms': rooms,
    'description': description,
  };
}