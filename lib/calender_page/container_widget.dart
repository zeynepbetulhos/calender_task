import 'package:calender_task/calender_page/plans_part.dart';
import 'package:calender_task/calender_page/time_widget.dart';
import 'package:flutter/material.dart';

class ContainerWidget2 extends StatelessWidget {
  const ContainerWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(25.0), topRight: Radius.circular(25.0)),
        color: Colors.white,
      ),
      width: double.infinity,
      height: 570,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '3 meeting',
              style: TextStyle(fontSize: 17, color: Colors.grey),
            ),
            const Text(
              'Monday',
              style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      TimeWidget(time: '10:00'),
                      TimeWidget(time: '11:00'),
                      TimeWidget(time: '12:00'),
                      TimeWidget(time: '13:00'),
                      TimeWidget(time: '14:00'),
                      TimeWidget(time: '15:00'),
                      TimeWidget(time: '16:00'),
                      TimeWidget(time: '17:00'),
                    ],
                  ),
                ),
                const Spacer(),
                Expanded(
                  flex: 6,
                  child: buildPlans(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
