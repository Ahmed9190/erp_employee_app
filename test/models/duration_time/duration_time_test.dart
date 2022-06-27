import 'package:attendance/features/data/duration_time.dart';
import 'package:attendance/features/data/time_hms.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
      '(Given) time is 02:05:22 (When) getRestSecondsToMinuteUp is called (Then) result is 38',
      () async {
    DurationTime durationTime = DurationTime(TimeHms.parse("02:05:22"));

    expect(durationTime.restSecondsToMinuteUp == 38, true);
  });

  test(
      "(Given) time time is 02:05:22 (When) minuteUp is called (Then) minutes is 6",
      () async {
    DurationTime durationTime = DurationTime(TimeHms.parse("02:05:22"));

    durationTime.minuteUp();

    expect(durationTime.time.minute == 6, true);
  });
}
