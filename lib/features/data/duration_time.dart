import 'package:attendance/features/data/time_hms.dart';
import 'package:intl/intl.dart';

class DurationTime {
  late DateTime _dateTime;
  DateTime get time => _dateTime;

  DurationTime(
    TimeHms time,
  ) {
    int hours = time.hours;
    int minutes = time.minutes;
    int seconds = time.seconds;

    _dateTime = DateFormat('Hms', 'en_US').parse('$hours:$minutes:$seconds');
  }

  int get restSecondsToMinuteUp => 60 - time.second;

  void minuteUp() {
    _dateTime = _dateTime.add(const Duration(minutes: 1));
  }
}
