import 'package:flutter/material.dart';

class TimeWidget extends StatelessWidget {
  final String time;

  const TimeWidget({super.key, required this.time});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          time,
          style: const TextStyle(fontSize: 17),
        ),
        const SizedBox(height: 34),
      ],
    );
  }
}
