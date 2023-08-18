import 'package:flutter/material.dart';

Row buildTop() {
  return Row(
    children: [
      const Align(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Good',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40,),
            ),
            Text(
              'morning',
              style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.grey),
            ),
          ],
        ),
      ),
      const SizedBox(width: 90),
      ClipOval(
        child: Container(
          color: const Color(0xFFE0E0E0),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.calendar_today_outlined,
              size: 30,
              color: Colors.black,
            ),
          ),
        ),
      ),
      const SizedBox(width: 10),
      ClipOval(
        child: Container(
          color: const Color(0xFFE0E0E0),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_outlined,
              size: 35,
              color: Colors.black,
            ),
          ),
        ),
      ),

    ],
  );
}
