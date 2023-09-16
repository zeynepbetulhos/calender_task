import 'package:calender_task/calender_page/container_widget.dart';
import 'package:calender_task/calender_page/days_part.dart';
import 'package:flutter/material.dart';

class CalenderPage extends StatelessWidget {
  const CalenderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Padding(
          padding: const EdgeInsets.all(3.0),
          child: ClipOval(
            child: Container(
              color: Colors.white,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  size: 30,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
        title: const Row(
          children: [
            Text(
              'April 2023',
              style: TextStyle(fontSize: 25),
            ),
            Icon(
              Icons.expand_more,
              size: 40,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          buildDays(),
          ContainerWidget2(),
        ],
      ),
      floatingActionButton: buildFloatingActionButton(),
    );
  }

  FloatingActionButton buildFloatingActionButton() {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: Colors.indigoAccent,
      child: const Icon(Icons.add,),
    );
  }
}