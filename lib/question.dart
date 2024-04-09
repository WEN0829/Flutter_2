import 'subject.dart';
import 'subject_detail.dart';
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  const Question({super.key, required this.subject});
  final Subject subject;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return Subject_detail(subject: subject);
            },
          ),
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(subject.quetions),
          Text(subject.statement),
          Text(subject.answer)
        ],
      ),
    );
  }
}
