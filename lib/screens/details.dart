import 'package:flutter/material.dart';
import '../models/clothes_model.dart';
import '../widgets/details/back_button_details.dart';
import '../widgets/details/data_details.dart';
import '../widgets/details/image_details.dart';
import '../widgets/details/title_details.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    final exam = ModalRoute.of(context)!.settings.arguments as Exam;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            // Exams may not have images; keep placeholder or remove if not needed
            ImageDetails(
              image: '', // placeholder
            ),
            TitleDetails(
              id: exam.id,
              name: exam.subjectName,
            ),
            DataDetails(
              id: exam.id,
              description: exam.description,
              dateTime: exam.dateTime,
              rooms: exam.rooms,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: const BackButtonDetails(),
    );
  }
}