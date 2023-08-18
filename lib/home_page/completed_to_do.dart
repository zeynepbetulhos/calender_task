import 'package:flutter/material.dart';

class CompletedToDoWidget extends StatefulWidget {
  const CompletedToDoWidget({super.key});


  @override
  State<CompletedToDoWidget> createState() => _CompletedToDoWidgetState();
}

class _CompletedToDoWidgetState extends State<CompletedToDoWidget> {

  bool? _isItComplete = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            buildCheckbox(),
            const SizedBox(width: 10),
            Align(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Watering the plants',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17, color: Colors.grey, decoration: TextDecoration.lineThrough),
                  ),
                  buildToday(),
                ],
              ),
            ),
          ],
        ),
        const Divider(),
        Row(
          children: [
            buildCheckbox(),
            const SizedBox(width: 10),
            Align(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Design home page',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17, color: Colors.grey, decoration: TextDecoration.lineThrough),
                  ),
                  buildToday(),
                ],
              ),
            ),
          ],
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
}

