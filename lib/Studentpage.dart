import 'package:college_app/Admission.dart';
import 'package:college_app/Attendance.dart';
import 'package:college_app/Courses.dart';
import 'package:college_app/Event.dart';
import 'package:college_app/Fee.dart';
import 'package:college_app/Notifications.dart';
import 'package:college_app/Assignment.dart';
import 'package:college_app/Timetable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Studentpage extends StatelessWidget {
  final Color mainColor = Color(0xff006769);
  final TextStyle textStyle = TextStyle(
    fontSize: 20,
    color: Color(0xff006769),
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          buildBackground(),
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 50),
                Image(
                  color: Colors.white,
                  image: AssetImage('assets/images/Studentpage.png'),
                ),
                SizedBox(height: 20),
                buildProfileCard(),
                SizedBox(height: 10),
                buildGrid(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildBackground() {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                mainColor.withOpacity(0.9),
                Color(0xFFA4EAFE).withOpacity(0.9),
                Color(0xffa4c7c7).withOpacity(0.9),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        Positioned(
          top: -160,
          left: -160,
          child: buildCircleDecoration(),
        ),
        Positioned(
          bottom: -160,
          right: -160,
          child: buildCircleDecoration(),
        ),
      ],
    );
  }

  Widget buildCircleDecoration() {
    return Container(
      height: 440,
      width: 440,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(900),
        color: mainColor,
      ),
    );
  }

  Widget buildProfileCard() {
    return Center(
      child: Container(
        height: 180,
        width: 320,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            color: mainColor,
            width: 2,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40,
              child: Image(
                image: AssetImage('assets/images/girlStudent.png'),
              ),
            ),
            SizedBox(height: 5),
            Text('Ateeqa Yasmeen', style: textStyle),
            Text('Roll no 83', style: textStyle),
            Text('Semester 8th', style: textStyle),
          ],
        ),
      ),
    );
  }

  Widget buildGrid(BuildContext context) {
    return Container(
      height: 340,
      width: 320,
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        children: [
          buildGridItem(context, Icons.add_task, 'Admission', Admission()),
          buildGridItem(context, Icons.event, 'Event', Event()),
          buildGridItem(context, Icons.fact_check_sharp, 'Fee', Fee()),
          buildGridItem(context, Icons.perm_contact_calendar_outlined, 'Attendance', Attendance()),
          buildGridItem(context, Icons.access_alarm, 'Timetable', Timetable()),
          buildGridItem(context, Icons.calendar_month, 'Courses', Courses()),
          buildGridItem(context, Icons.notification_add, 'Notifications', Notifications()),
          buildGridItem(context, Icons.assignment, 'Assignment', Assignment()),
        ],
      ),
    );
  }

  Widget buildGridItem(BuildContext context, IconData icon, String title, Widget page) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => page,
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
              color: mainColor,
              width: 2,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 70, color: mainColor),
              Text(title, style: textStyle),
            ],
          ),
        ),
      ),
    );
  }
}

