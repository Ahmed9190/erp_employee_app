import 'package:attendance/components/gap.dart';
import 'package:attendance/components/notifications/notification_tile.dart';
import 'package:attendance/core/util/constants.dart';
import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: Paddings.screen),
        child: Gap(
          children: [
            NotificationTile(
              isSeen: false,
              notificationTileType: NotificationTileType.notification,
              description: "$loremIpsum $loremIpsum $loremIpsum",
            ),
            NotificationTile(
              isSeen: false,
              notificationTileType: NotificationTileType.remainder,
              description: loremIpsum,
            ),
            NotificationTile(
              isSeen: false,
              notificationTileType: NotificationTileType.remainder,
              description: loremIpsum,
            ),
            NotificationTile(
              isSeen: true,
              notificationTileType: NotificationTileType.notification,
              description: loremIpsum,
            ),
            NotificationTile(
              isSeen: false,
              notificationTileType: NotificationTileType.notification,
              description: loremIpsum,
            ),
            NotificationTile(
              isSeen: true,
              notificationTileType: NotificationTileType.remainder,
              description: loremIpsum,
            ),
            NotificationTile(
              isSeen: true,
              notificationTileType: NotificationTileType.notification,
              description: loremIpsum,
            ),
            NotificationTile(
              isSeen: true,
              notificationTileType: NotificationTileType.remainder,
              description: loremIpsum,
            ),
            NotificationTile(
              isSeen: true,
              notificationTileType: NotificationTileType.notification,
              description: loremIpsum,
            ),
            NotificationTile(
              isSeen: true,
              notificationTileType: NotificationTileType.remainder,
              description: loremIpsum,
            ),
            NotificationTile(
              isSeen: true,
              notificationTileType: NotificationTileType.remainder,
              description: loremIpsum,
            ),
            NotificationTile(
              isSeen: true,
              notificationTileType: NotificationTileType.notification,
              description: loremIpsum,
            ),
            NotificationTile(
              isSeen: true,
              notificationTileType: NotificationTileType.notification,
              description: loremIpsum,
            ),
            NotificationTile(
              isSeen: true,
              notificationTileType: NotificationTileType.remainder,
              description: loremIpsum,
            ),
          ],
        ),
      ),
    );
  }
}
