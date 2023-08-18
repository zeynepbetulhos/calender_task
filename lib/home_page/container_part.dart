import 'package:flutter/material.dart';

class ContainerWidget extends StatefulWidget {
  const ContainerWidget({super.key});


  @override
  State<ContainerWidget> createState() => _ContainerWidgetState();
}

class _ContainerWidgetState extends State<ContainerWidget> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 350,
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Align(
          alignment: Alignment.topLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '24 April,Mon',
                style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.grey),
              ),
              const SizedBox(height: 7),
              const Text(
                "Today's progress",
                style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white),
              ),
              const SizedBox(height: 80),
              const Text(
                '10/12 Tasks',
                style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.grey),
              ),
              const Text(
                '83%',
                style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 80,
                    color: Colors.white),
              ),
              buildProgressBar(),
            ],
          ),
        ),
      ),
    );
  }

  Container buildProgressBar() {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage('assets/png/space_progress.jpeg'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const LinearProgressIndicator(
        value: 0.8,
        backgroundColor: Colors.transparent,
        valueColor: AlwaysStoppedAnimation<Color>(Colors.transparent),
      ),
    );
  }


}
