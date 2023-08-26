import 'package:flutter/material.dart';

class DaysWidget extends StatelessWidget {

  final String day;
  final String date;

  const DaysWidget({
    super.key,
    required this.day,
    required this.date
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          day,
          style: TextStyle(fontSize: 18, color: Colors.grey),
        ),
        Text(
          date,
          style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.grey,),
        ),
      ],
    );
  }
}
