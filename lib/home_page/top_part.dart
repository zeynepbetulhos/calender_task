import 'package:calender_task/calender_page/calender_page.dart';
import 'package:flutter/material.dart';

Row buildTop(BuildContext context) {
  return Row(
    children: [
      const Align(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Good',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35,),
            ),
            Text(
              'morning',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35, color: Colors.grey),
            ),
          ],
        ),
      ),
      const Spacer(),
      ClipOval(
        child: Container(
          color: const Color(0xFFE0E0E0),
          child: IconButton(
            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const CalenderPage()));
            },
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
