import 'package:flutter/material.dart';

Column buildPlans() {
  return Column(
    children: [
      buildDailyStandUp(),
      const Divider(color: Color(0xFFBDBDBD)),
      const SizedBox(height: 50),
      buildDesignMeeting(),
      const SizedBox(height: 15),
      buildLunchTime(),
      const SizedBox(height: 5),
      const Divider(color: Color(0xFFBDBDBD)),
      const SizedBox(height: 30),
      const Divider(color: Color(0xFFBDBDBD)),
    ],
  );
}


Stack buildDailyStandUp() {
  return Stack(
    children:[
      ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
        child: Container(
          height: 50,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/png/pattern_2.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Transform.scale(
            scaleX:-1,
            child: const LinearProgressIndicator(
              value: 0.2,
              backgroundColor: Colors.transparent,
              valueColor: AlwaysStoppedAnimation<Color>(Color(0xFFE0E0E0)),
            ),
          ),
        ),
      ),
      const Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: [
            Text(
              'Daily Stand up',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Icon(Icons.more_horiz)
          ],
        ),
      ),
    ],
  );
}

Container buildDesignMeeting() {
  return Container(
      decoration: const BoxDecoration(
        color: Color(0xFFC5CAE9),
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
      ),
      width: 250,
      height: 130,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Align(
          alignment: Alignment.topCenter,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Row(
                children: [
                  Text(
                    'Design Meeting',
                  ),
                  Spacer(),
                  Icon(Icons.more_horiz)
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  const Flexible(
                    flex: 3,
                    child: SizedBox(
                      height: 40,
                      width: double.infinity,
                      child: Stack(
                        //alignment: AlignmentDirectional.centerStart,
                        children: [
                          Positioned(
                            child: CircleAvatar(
                              radius: 20,
                              backgroundImage: AssetImage('assets/jpeg/profile_photo_1.jpeg'),
                            ),
                          ),
                          Positioned(
                            left: 20,
                            child: CircleAvatar(
                              radius: 20,
                              backgroundImage: AssetImage('assets/jpeg/profile_photo_2.jpeg'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Spacer(flex: 5),
                  ClipOval(
                    child: Container(
                      width: 30,
                      height: 30,
                      color: Colors.black,
                      child: const Icon(
                          Icons.video_camera_back_outlined,
                          size:15 ,
                          color: Colors.white,
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

Container buildLunchTime() {
  return Container(
    decoration: const BoxDecoration(
      color: Color(0xFFC5CAE9),
      borderRadius: BorderRadius.all(Radius.circular(15.0)),
    ),
    width: 250,
    height: 50,
    child: const Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            'Lunch Time',
          ),
          Spacer(),
          Icon(Icons.more_horiz)
        ],
      ),
    ),
  );
}
