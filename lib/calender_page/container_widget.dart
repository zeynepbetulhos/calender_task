import 'package:calender_task/calender_page/plans_part.dart';
import 'package:calender_task/calender_page/time_widget.dart';
import 'package:flutter/material.dart';

class ContainerWidget2 extends StatelessWidget {
  ContainerWidget2({super.key});

  List<String> times=['10.00', '11.00','12.00','13.00','14.00','15.00','16.00','17.00',];

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
        child: ListView(
          //crossAxisAlignment: CrossAxisAlignment.start,
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
                Expanded(
                  flex: 1,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: times.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Text(times[index],style: TextStyle(fontSize: 17),),
                          SizedBox(height: 30),
                        ],
                      );
                    },
                  ),
                ),
                Spacer(flex: 1),
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
