import 'package:attendance/features/data/time_hms.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("Test TimeHms with default constractor", () {
    test(
        '(Given) time is 02:05:22 (When) default constractor with int values is called (Then) hours = 02',
        () async {
      TimeHms timeHms = TimeHms(hours: 02, minutes: 05, seconds: 22);

      expect(timeHms.hours, 02);
    });
    test(
        '(Given) time is 02:05:22 (When) default constractor with int values is called (Then) minutes = 05',
        () async {
      TimeHms timeHms = TimeHms(hours: 02, minutes: 05, seconds: 22);

      expect(timeHms.minutes, 05);
    });
    test(
        '(Given) time is 02:05:22 (When) default constractor with int values is called (Then) seconds = 22',
        () async {
      TimeHms timeHms = TimeHms(hours: 02, minutes: 05, seconds: 22);

      expect(timeHms.seconds, 22);
    });
  });

  group("Test TimeHms with parse constractor", () {
    test(
        '(Given) time is 02:05:22 (When) parse constractor with int values is called (Then) hours = 02',
        () async {
      TimeHms timeHms = TimeHms.parse("02:05:22");

      expect(timeHms.hours, 02);
    });

    test(
        '(Given) time is 02:05:22 (When) parse constractor with int values is called (Then) minutes = 05',
        () async {
      TimeHms timeHms = TimeHms.parse("02:05:22");

      expect(timeHms.minutes, 05);
    });
    test(
        '(Given) time is 02:05:22 (When) parse constractor with int values is called (Then) seconds = 22',
        () async {
      TimeHms timeHms = TimeHms.parse("02:05:22");

      expect(timeHms.seconds, 22);
    });
  });
}
