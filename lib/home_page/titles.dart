import 'package:flutter/material.dart';

class TitlesWidget extends StatelessWidget {
  final String title;
  final String iconNumber;

  const TitlesWidget({
    super.key,
    required this.title,
    required this.iconNumber,
  });



  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 40, color: Colors.black),
        ),
        const SizedBox(width: 10),
        Container(
          width: 35,
          height: 35,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFFE0E0E0),
          ),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              iconNumber,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}
