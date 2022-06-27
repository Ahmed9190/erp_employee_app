import 'package:flutter/material.dart';

import 'package:attendance/components/tab_bar/tab_bar.dart';
import 'package:attendance/core/util/constants.dart';

class TabBarMonthes extends StatelessWidget {
  final TickerProvider vsync;

  /// Range 1-12
  final int startMonth;

  /// Range 1-12
  final int endMonth;

  const TabBarMonthes({
    Key? key,
    required this.vsync,
    this.startMonth = 1,
    this.endMonth = 12,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBarC(
      vsync: vsync,
      tabsTitles: monthes.getRange(startMonth - 1, endMonth).toList(),
    );
  }
}
