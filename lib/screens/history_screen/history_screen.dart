// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

import '../../widgets/my_appbar.dart';
import '../../widgets/my_button_appbar.dart';

class ShowAttendance extends StatefulWidget {
  const ShowAttendance({super.key});

  @override
  State<ShowAttendance> createState() => _ShowAttendanceState();
}

class _ShowAttendanceState extends State<ShowAttendance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: 'Attendance Log',
        backgroundColor: Colors.orange,
        isAutomaticallyImplyLeading: false,
      ),
      body: Card(
        child: Column(
          children: [
            ListTile(
              title: Text(
                "Name: ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: Container(
                child: (Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Subject: ",
                      style: const TextStyle(fontSize: 18),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Date: ",
                      style: const TextStyle(fontSize: 18),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Start class: ",
                      style: const TextStyle(fontSize: 18),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "End Class: ",
                      style: const TextStyle(fontSize: 18),
                    ),
                  ],
                )),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: MyBottomAppBar(),
    );
  }
}
