import 'package:calender_task/calender_page/days_widget.dart';
import 'package:flutter/material.dart';

Expanded buildDays() {
  return Expanded(
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'mon',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              Text(
                '24',
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ],
          ),
          SizedBox(width: 20),
          DaysWidget(day: 'tue', date: '25'),
          SizedBox(width: 20),
          DaysWidget(day: 'wed', date: '26'),
          SizedBox(width: 20),
          DaysWidget(day: 'thu', date: '27'),
          SizedBox(width: 20),
          DaysWidget(day: 'fri', date: '28'),
          SizedBox(width: 20),
          DaysWidget(day: 'sat', date: '29'),
          SizedBox(width: 20),
          DaysWidget(day: 'sun', date: '30'),
        ],
      ),
    ),
  );
}