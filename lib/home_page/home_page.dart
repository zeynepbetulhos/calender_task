import 'package:calender_task/home_page/container_part.dart';
import 'package:calender_task/home_page/ongoing_to_do.dart';
import 'package:calender_task/home_page/completed_to_do.dart';
import 'package:calender_task/home_page/top_part.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(17.0),
        child: ListView(
          children: [
            buildTop(context),
            const SizedBox(height: 20),
            const ContainerWidget(),
            const SizedBox(height: 20),
            const Column(
              children: [
                OngoingToDoWidget(),
                SizedBox(height: 20),
                CompletedToDoWidget(),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: buildFloatingActionButton(),
    );
  }

  FloatingActionButton buildFloatingActionButton() {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: Colors.indigoAccent,
      child: const Icon(Icons.add),
    );
  }
}
