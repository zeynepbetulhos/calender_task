import 'package:calender_task/home_page/home_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          buildBackground(),
          buildContainer(context),
        ],
      ),
    );
  }

  Align buildContainer(BuildContext context) {
    return Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(25.0), topRight: Radius.circular(25.0)),
            ),
            height: 400,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const Text(
                    'Manage     your',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60),
                  ),
                  const SizedBox(height:10.0),
                  const Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'tasks',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60, color: Colors.grey),
                    ),
                  ),
                  const SizedBox(height:75.0),
                  Row(
                    children: [
                      const Text(
                        'Get started',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                      ),
                      const SizedBox(width: 120.0),
                      ClipOval(
                        child: Container(
                          color: Colors.black,
                          child: IconButton(
                            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                              },
                            icon: const Icon(
                              Icons.arrow_forward_rounded,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
  }

  Container buildBackground() {
    return Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/png/space.png'),
              fit: BoxFit.cover,
            ),
          ),
        );
  }
}
