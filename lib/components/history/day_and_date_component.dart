import 'package:attendance/core/util/date_time_converter.dart';
import 'package:flutter/material.dart';

class DayAndDate extends StatelessWidget {
  final String dayNumber;
  final int weekDay;

  const DayAndDate({
    Key? key,
    required this.dayNumber,
    required this.weekDay,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: 70.0,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            dayNumber,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 30.0,
            ),
          ),
          Text(
            DateTimeConverter()
                .weekDayToArabicString(weekDay)
                .toOption()
                .toNullable()!,
            style: const TextStyle(color: Colors.white, fontSize: 18.0),
          ),
        ],
      ),
    );
  }
}
