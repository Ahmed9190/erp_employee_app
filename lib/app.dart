import 'package:attendance/components/bottom_nav_bar/tab_item_boundary.dart';
import 'package:attendance/screen/attendance_screen.dart';
import 'package:attendance/screen/history_screen.dart';
import 'package:attendance/core/util/color_palettes.dart';
import 'package:attendance/core/util/constants.dart';
import 'package:attendance/screen/notifications_screen.dart';
import 'package:attendance/screen/request_screen.dart';
import 'package:attendance/screen/settings_screen.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  // TODO: change to 0
  int activeScreenIndex = 0;
  List<Widget> screens = const [
    AttendanceScreen(),
    HistoryScreen(),
    RequestScreen(),
    NotificationsScreen(),
    SettingsScreen(),
  ];

  void changePage(int index) {
    setState(() {
      activeScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: Paddings.screen),
          child: screens[activeScreenIndex],
        ),
      ),
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.white,
        color: ColorPalette.grey.shade50,
        activeColor: Theme.of(context).primaryColor,
        height: 60.0,
        style: TabStyle.react,
        items: [
          TabItemBoundary(
            imagePath: 'assets/SVG/attendance.svg',
            title: "الحضور",
          ),
          TabItemBoundary(
            imagePath: 'assets/SVG/history.svg',
            title: "السجل",
          ),
          TabItemBoundary(
            imagePath: 'assets/SVG/add_message.svg',
            title: "اضافة طلب",
          ),
          TabItemBoundary(
            imagePath: 'assets/SVG/notifications.svg',
            title: "الاشعارات",
          ),
          TabItemBoundary(
            imagePath: 'assets/SVG/settings.svg',
            title: "الاعدادات",
          )
        ],
        initialActiveIndex: activeScreenIndex,
        onTap: changePage,
      ),
    );
  }
}
