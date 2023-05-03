import 'package:flutter/material.dart';
import 'package:student_attendance_monitoring/screens/history_screen/history_screen.dart';

import '../screens/home_screen/home_screen.dart';

class MyBottomAppBar extends StatelessWidget {
  const MyBottomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.orange,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            color: Colors.white,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ),
              );
            },
            icon: Icon(
              Icons.home,
              size: 35,
            ),
          ),
          IconButton(
            color: Colors.white,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ShowAttendance(),
                ),
              );
            },
            icon: Icon(
              Icons.history,
              size: 35,
            ),
          ),
          IconButton(
            color: Colors.white,
            onPressed: () {},
            icon: Icon(
              Icons.person,
              size: 35,
            ),
          ),
        ],
      ),
    );
  }
}
