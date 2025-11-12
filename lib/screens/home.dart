import 'package:flutter/material.dart';
import '../models/clothes_model.dart';
import '../widgets/clothes/clothes_grid.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Exam> exams = [
    Exam(
      id: 1,
      subjectName: "Mathematics",
      dateTime: DateTime(2025, 11, 20, 9, 0),
      rooms: ["Room 101", "Room 102"],
      description: "Final exam covering algebra and calculus.",
    ),
    Exam(
      id: 2,
      subjectName: "Physics",
      dateTime: DateTime(2025, 11, 21, 13, 0),
      rooms: ["Room 201"],
      description: "Exam covering mechanics and thermodynamics.",
    ),
    Exam(
      id: 3,
      subjectName: "Chemistry",
      dateTime: DateTime(2025, 11, 22, 11, 0),
      rooms: ["Lab 1", "Lab 2"],
      description: "Organic and inorganic chemistry topics.",
    ),
    Exam(
      id: 4,
      subjectName: "History",
      dateTime: DateTime(2025, 11, 23, 10, 0),
      rooms: ["Room 303"],
      description: "European and world history.",
    ),
    Exam(
      id: 5,
      subjectName: "English Literature",
      dateTime: DateTime(2025, 11, 24, 12, 0),
      rooms: ["Room 102", "Room 104"],
      description: "Analysis of 19th and 20th-century novels.",
    ),
    Exam(
      id: 6,
      subjectName: "Biology",
      dateTime: DateTime(2025, 11, 25, 14, 0),
      rooms: ["Lab 3"],
      description: "Cell biology and genetics.",
    ),
    Exam(
      id: 7,
      subjectName: "Computer Science",
      dateTime: DateTime(2025, 11, 26, 9, 0),
      rooms: ["Room 401"],
      description: "Programming and data structures.",
    ),
    Exam(
      id: 8,
      subjectName: "Geography",
      dateTime: DateTime(2025, 11, 27, 13, 0),
      rooms: ["Room 202"],
      description: "Physical and human geography.",
    ),
    Exam(
      id: 9,
      subjectName: "Economics",
      dateTime: DateTime(2025, 11, 28, 10, 0),
      rooms: ["Room 105"],
      description: "Microeconomics and macroeconomics.",
    ),
    Exam(
      id: 10,
      subjectName: "Philosophy",
      dateTime: DateTime(2025, 11, 29, 11, 0),
      rooms: ["Room 107"],
      description: "Ethics, logic, and epistemology.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[100],
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
            size: 24,
          ),
        ),
        title: const Text(
          "223082",
          style: TextStyle(
            color: Colors.white,
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings,
              color: Colors.white,
              size: 24,
            ),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: ExamGrid(exams: exams),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Share',
        backgroundColor: Colors.pink[100],
        child: const Icon(Icons.share_rounded),
      ),
    );
  }
}