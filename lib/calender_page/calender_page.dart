import 'package:calender_task/calender_page/app_bar.dart';
import 'package:calender_task/calender_page/container_widget.dart';
import 'package:calender_task/calender_page/days_part.dart';
import 'package:flutter/material.dart';

class CalenderPage extends StatelessWidget {
  const CalenderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: buildAppBar(context),
      body: Column(
        children: [
          buildDays(),
          const ContainerWidget2(),
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