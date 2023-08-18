import 'package:calender_task/home_page/container_part.dart';
import 'package:calender_task/home_page/ongoing_to_do.dart';
import 'package:calender_task/home_page/titles.dart';
import 'package:calender_task/home_page/completed_to_do.dart';
import 'package:calender_task/home_page/top_part.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              buildTop(),
              const SizedBox(height: 20),
              const ContainerWidget(),
              const SizedBox(height: 20),
              const Column(
                children: [
                  TitlesWidget(title: 'Ongoing', iconNumber: '2'),
                  SizedBox(height: 15),
                  OngoingToDoWidget(),
                  SizedBox(height: 20),
                  TitlesWidget(title: 'Completed', iconNumber: '10'),
                  SizedBox(height: 15),
                  CompletedToDoWidget(),
                ],
              ),
            ],
          ),
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
