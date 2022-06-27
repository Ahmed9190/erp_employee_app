import 'package:attendance/core/util/constants.dart';
import 'package:flutter/material.dart';

import 'package:attendance/components/gap.dart';
import 'package:attendance/components/history/day_and_date_component.dart';
import 'package:attendance/components/history/time_badge.dart';
import 'package:attendance/components/history/time_title_and_exact_time.dart';
import 'package:attendance/core/util/color_palettes.dart';

class HistoryTile extends StatelessWidget {
  final TimeBadgeType? timeBadgeType;

  const HistoryTile({
    Key? key,
    this.timeBadgeType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.0,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(borderRadius),
        ),
        color: ColorPalette.white,
        border: Border.all(
          color: ColorPalette.grey.withOpacity(0.3),
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          textDirection: TextDirection.ltr,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const DayAndDate(
                  dayNumber: "22",
                  weekDay: 4,
                ),
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TimeTitleAndExactTime(
                        timeTitle: TimeTitle.attendance,
                        time: DateTime.now(),
                      ),
                      Container(
                        width: 1,
                        height: double.infinity,
                        color: ColorPalette.grey.withOpacity(0.25),
                      ),
                      TimeTitleAndExactTime(
                        timeTitle: TimeTitle.leaving,
                        time: DateTime.now(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Gap(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (timeBadgeType != null)
                  TimeBadge(timeBadgeType: timeBadgeType!),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
