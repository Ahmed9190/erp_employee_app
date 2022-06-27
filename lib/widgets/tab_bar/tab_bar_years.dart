import 'package:attendance/components/tab_bar/tab_bar.dart';
import 'package:flutter/material.dart';

class TabBarYears extends StatelessWidget {
  final TickerProvider vsync;

  final int startYear;
  final int endYear;

  const TabBarYears({
    Key? key,
    required this.vsync,
    required this.startYear,
    required this.endYear,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBarC(
      vsync: vsync,
      tabsTitles: List<String>.generate(
        endYear - startYear + 1,
        (int index) => (startYear + index).toString(),
      ).toList(),
    );
  }
}
