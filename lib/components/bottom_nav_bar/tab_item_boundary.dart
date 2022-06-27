import 'package:attendance/components/bottom_nav_bar/bubble_bottom_bar_item_boundary.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
TabItem<Widget> TabItemBoundary({
  required String imagePath,
  required String title,
}) {
  return TabItem<Widget>(
    activeIcon: BottomBarSvgIcon(
      imagePath: imagePath,
      isActive: true,
      padding: 3.0,
    ),
    icon: BottomBarSvgIcon(
      imagePath: imagePath,
      isActive: false,
    ),
    title: title,
  );
}
