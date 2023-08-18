import 'package:calender_task/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CalenderApp());
}

class CalenderApp extends StatelessWidget {
  const CalenderApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),

    );
  }
}
