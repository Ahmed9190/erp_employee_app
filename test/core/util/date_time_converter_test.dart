import 'package:attendance/core/util/date_time_converter.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late DateTimeConverter dateTimeConverter;

  setUp(() {
    dateTimeConverter = DateTimeConverter();
  });

  test(
    "should return arabic a String when the int in range 1..7",
    () async {
      //arrange
      const weekDay = 1;
      //act
      final result = dateTimeConverter.weekDayToArabicString(weekDay);
      //assert
      expect(result, const Right("الإثنين"));
    },
  );

  test(
    "should return Failure when the int out of range 1..7",
    () async {
      //arrange
      const weekDay = 8;
      //act
      final result = dateTimeConverter.weekDayToArabicString(weekDay);
      //assert
      expect(result, Left(DateTimeConverterFailure()));
    },
  );
}
