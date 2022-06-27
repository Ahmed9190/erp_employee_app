import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:attendance/components/gap.dart';
import 'package:attendance/components/history/rounded_bottom_sheet.dart';
import 'package:attendance/core/util/color_palettes.dart';
import 'package:attendance/core/util/constants.dart';
import 'package:attendance/widgets/history/history_widgets.dart';

enum NotificationTileType {
  notification,
  remainder,
}

class NotificationTile extends StatelessWidget {
  final bool isSeen;
  final NotificationTileType notificationTileType;
  final String description;

  const NotificationTile({
    Key? key,
    required this.isSeen,
    required this.notificationTileType,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showRoundedBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return NotificationBottomSheet(
              notificationTileType: notificationTileType,
              stringDate: "22-5-2022",
              description: description,
            );
          },
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            width: 1.0,
            color: ColorPalette.border,
          ),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        width: double.infinity,
        height: 86.0,
        child: Padding(
          padding: const EdgeInsets.all(Paddings.small),
          child: Gap(
            isRow: true,
            children: [
              SvgPicture.asset(
                _getLeadingIconPath(),
                height: 60.0,
                width: 60.0,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      loremIpsum,
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: !isSeen ? FontWeight.w700 : FontWeight.w500,
                        height: 1.5,
                      ),
                      maxLines: 2,
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.fade,
                    ),
                    const Text(
                      "22-5-2022",
                      style: TextStyle(
                        color: ColorPalette.primary,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              if (!isSeen) const NotSeenCircle()
            ],
          ),
        ),
      ),
    );
  }

  String _getLeadingIconPath() {
    late String leadingIconPath;
    switch (notificationTileType) {
      case NotificationTileType.notification:
        leadingIconPath = 'assets/SVG/notification_background.svg';
        break;
      case NotificationTileType.remainder:
        leadingIconPath = 'assets/SVG/remainder_background.svg';
        break;
    }

    return leadingIconPath;
  }
}
