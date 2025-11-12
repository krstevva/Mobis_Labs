import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DataDetails extends StatelessWidget {
  final int id;
  final String description;
  final DateTime dateTime;
  final List<String> rooms;

  const DataDetails({
    super.key,
    required this.id,
    required this.description,
    required this.dateTime,
    required this.rooms,
  });

  @override
  Widget build(BuildContext context) {
    final formattedDate = DateFormat('dd MMM yyyy, HH:mm').format(dateTime);

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Exam ID: $id',
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            'Date & Time: $formattedDate',
            style: const TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 8),
          Text(
            'Rooms: ${rooms.join(", ")}',
            style: const TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 12),
          Text(
            description,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}