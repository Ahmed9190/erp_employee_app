import 'package:flutter/material.dart';

class TimeHms {
  late final int hours;
  late final int minutes;
  late final int seconds;

  TimeHms({
    required this.hours,
    required this.minutes,
    required this.seconds,
  });

  TimeHms.parse(String timeString) {
    List<int> timeHmsArray =
        timeString.split(":").map((e) => int.parse(e)).toList();

    bool isHoursInRightRange = timeHmsArray[0] >= 0 && timeHmsArray[0] < 24;
    bool isMinutesInRightRange = timeHmsArray[1] >= 0 && timeHmsArray[1] < 59;
    bool isSecondsInRightRange = timeHmsArray[2] >= 0 && timeHmsArray[2] < 59;

    if (isHoursInRightRange && isMinutesInRightRange && isSecondsInRightRange) {
      hours = timeHmsArray[0];
      minutes = timeHmsArray[1];
      seconds = timeHmsArray[2];
    } else {
      throw ErrorDescription("The time in a wrong format");
    }
  }
}
