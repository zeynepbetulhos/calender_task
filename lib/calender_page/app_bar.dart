import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
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
  );
}