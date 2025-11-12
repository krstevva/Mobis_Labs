import 'package:flutter/material.dart';
import '../../models/clothes_model.dart';
import 'clothes_card_data.dart';

class ExamCard extends StatelessWidget {
  final int id;
  final String subjectName;
  final DateTime dateTime;
  final List<String> rooms;
  final String description;

  const ExamCard({
    super.key,
    required this.id,
    required this.subjectName,
    required this.dateTime,
    required this.rooms,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        enableFeedback: true,
        splashColor: Colors.grey[600],
        onTap: () => {
          Navigator.pushNamed(
            context,
            "/details",
            arguments: Exam(
              id: id,
              subjectName: subjectName,
              dateTime: dateTime,
              rooms: rooms,
              description: description,
            ),
          )
        },
        child: Container(
          margin: const EdgeInsets.all(8.0),
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: const Color(0xFFF2F1EF),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 6,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: ExamCardData(
            subjectName: subjectName,
            dateTime: dateTime,
            rooms: rooms,
          ),
        ),
      ),
    );
  }
}