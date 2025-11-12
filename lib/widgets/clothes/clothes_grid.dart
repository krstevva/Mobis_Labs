import 'package:flutter/material.dart';
import '../../models/clothes_model.dart';
import 'clothes_card.dart';

class ExamGrid extends StatefulWidget {
  final List<Exam> exams;
  const ExamGrid({super.key, required this.exams});

  @override
  _ExamGridState createState() => _ExamGridState();
}

class _ExamGridState extends State<ExamGrid> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.all(6),
      crossAxisCount: 2,
      crossAxisSpacing: 4,
      mainAxisSpacing: 4,
      childAspectRatio: 0.75,
      physics: const BouncingScrollPhysics(),
      children: widget.exams.map((exam) =>
          ExamCard(
            id: exam.id,
            subjectName: exam.subjectName,
            dateTime: exam.dateTime,
            rooms: exam.rooms,
            description: exam.description,
          )
      ).toList(),
    );
  }
}