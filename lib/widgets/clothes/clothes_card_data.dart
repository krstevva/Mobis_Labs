import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ExamCardData extends StatelessWidget {
  final String subjectName;
  final DateTime dateTime;
  final List<String> rooms;

  const ExamCardData({
    super.key,
    required this.subjectName,
    required this.dateTime,
    required this.rooms,
  });

  @override
  Widget build(BuildContext context) {
    final formattedDate = DateFormat('dd MMM yyyy, HH:mm').format(dateTime);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.school,
          size: 80,
          color: Colors.blueGrey,
        ),
        const Divider(
          thickness: 1,
          indent: 15,
          endIndent: 15,
        ),
        Text(
          subjectName,
          style: const TextStyle(
              fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Text(
          formattedDate,
          style: const TextStyle(fontSize: 16, color: Colors.grey),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Text(
          'Rooms: ${rooms.join(", ")}',
          style: const TextStyle(fontSize: 14, color: Colors.black54),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}