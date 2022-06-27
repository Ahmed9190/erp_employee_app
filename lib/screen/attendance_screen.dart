import 'package:attendance/components/buttons/circular_animated_button.dart';
import 'package:attendance/widgets/timer_widget.dart';
import 'package:flutter/material.dart';

class AttendanceScreen extends StatelessWidget {
  const AttendanceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double radius = size.width * 0.6;

    return Center(
      child: //
          TimerWidget(
        radius: radius,
        maxTime: const Duration(seconds: 30),
      ),
      //   CircularAnimatedButton(
      // radius: radius,
      // onPressed: () {
      //   //TODO: impelement this function
      //   print('pressed');
      // },
      // child: const Text(
      //   "تسجيل\nالحضور",
      //   style: TextStyle(
      //     fontWeight: FontWeight.bold,
      //     color: Colors.white,
      //     fontSize: 45.0,
      //   ),
      //   textAlign: TextAlign.center,
      // ),
      // ),
    );
  }
}
