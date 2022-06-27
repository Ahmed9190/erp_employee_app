import 'package:attendance/components/gap.dart';
import 'package:attendance/components/history/time_badge.dart';
import 'package:attendance/core/util/constants.dart';
import 'package:attendance/widgets/history/history_tile.dart';
import 'package:attendance/widgets/tab_bar/tab_bar_monthes.dart';
import 'package:attendance/widgets/tab_bar/tab_bar_years.dart';
import 'package:flutter/material.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    // List<HistoryModel> historyData = [];
    // return ListView(
    //   children: const [
    //     HistoryTile(
    //       timeBadgeType: TimeBadgeType.overtime,
    //     ),
    //     HistoryTile(
    //       timeBadgeType: TimeBadgeType.earlier,
    //     ),
    //     HistoryTile(),
    //   ],
    // );

    return Gap(
      children: [
        TabBarYears(
          vsync: this,
          startYear: 2009,
          endYear: 2022,
        ),
        TabBarMonthes(
          vsync: this,
          // endMonth: 5,
          // startMonth: 9,
        ),
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(vertical: Paddings.screen),
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return const Padding(
                padding: EdgeInsets.symmetric(vertical: 4.0),
                child: HistoryTile(
                  timeBadgeType: TimeBadgeType.overtime,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
