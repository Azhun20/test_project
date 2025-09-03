import 'package:flutter/material.dart';

class TitleSubtitleFieldComponent extends StatelessWidget {
  final String title;
  final String subTitle;
  const TitleSubtitleFieldComponent(
      {super.key, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 4),
        Text(
          title,
          style: const TextStyle(
              fontSize: 7, fontWeight: FontWeight.w700, color: Colors.black),
        ),
        Text(
          subTitle,
          style: const TextStyle(
              fontSize: 9, fontWeight: FontWeight.w700, color: Colors.black),
        ),
      ],
    );
  }
}
