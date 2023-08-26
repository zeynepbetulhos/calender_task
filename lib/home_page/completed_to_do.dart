import 'package:calender_task/home_page/task_model.dart';
import 'package:calender_task/home_page/titles.dart';
import 'package:flutter/material.dart';

class CompletedToDoWidget extends StatefulWidget {
  const CompletedToDoWidget({super.key});


  @override
  State<CompletedToDoWidget> createState() => _CompletedToDoWidgetState();
}

class _CompletedToDoWidgetState extends State<CompletedToDoWidget> {
  bool? _isItComplete = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitlesWidget(title: 'Completed', iconNumber: '5'),
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
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17, color: Colors.grey, decoration: TextDecoration.lineThrough),
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
          value: true,
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
      TaskModel('Watering the plants', true),
      TaskModel('Design splash page', true),
      TaskModel('Prepare budget plan', true),
      TaskModel('Meet with Chris', true),
      TaskModel('Buy dinner', true),
    ];
  }

}

