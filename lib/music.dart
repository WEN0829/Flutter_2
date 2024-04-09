import 'content.dart';
import 'music_detail.dart';
import 'package:flutter/material.dart';

class Music extends StatelessWidget {
  const Music({super.key, required this.content});
  final Content content;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return MusicDetail(content: content);
            },
          ),
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(content.name),
          Text(content.author),
          Text(content.lyrics)
        ],
      ),
    );
  }
}
