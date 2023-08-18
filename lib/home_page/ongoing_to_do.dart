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
        Row(
          children: [
            buildCheckbox(),
            const SizedBox(width: 10),
            Align(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Create wireframe',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
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
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
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
}
