import 'package:calender_task/home_page/task_model.dart';
import 'package:calender_task/home_page/titles.dart';
import 'package:flutter/material.dart';

class OngoingToDoWidget extends StatefulWidget {
  const OngoingToDoWidget({super.key});


  @override
  State<OngoingToDoWidget> createState() => _OngoingToDoWidgetState();
}

class _OngoingToDoWidgetState extends State<OngoingToDoWidget> {

  bool? _isItComplete = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitlesWidget(title: 'Ongoing', iconNumber: '2'),
        const SizedBox(height: 15),
        SizedBox(
          height: 100,
          child: ListView.builder(
            itemCount: getList().length,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  buildCheckbox(),
                  const SizedBox(width: 10),
                  Align(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          getList()[index].title,
                          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                        buildToday(),
                      ],
                    ),
                  ),
                ],
              );
            }),
        ),
      ],
    );
  }

  Transform buildCheckbox() {
    return Transform.scale(
            scale: 2.0,
            child: Checkbox(
                checkColor: Colors.black,
                activeColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
                value: _isItComplete,
                onChanged: (value) {
                  setState((){
                    _isItComplete = value;
                  });
                }),
          );
  }

  Text buildToday() {
    return const Text(
      'Today',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.grey),
    );
  }

  List<TaskModel> getList() {
    return [
      TaskModel('Create wireframe', false),
      TaskModel('Design home page', false),
    ];
  }

}
