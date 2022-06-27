import 'package:attendance/core/util/color_palettes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomBarSvgIcon extends StatelessWidget {
  final bool isActive;
  final Color? inactiveIconColor;
  final Color? activeIconColor;
  final String imagePath;
  final double padding;

  const BottomBarSvgIcon({
    Key? key,
    required this.isActive,
    this.inactiveIconColor,
    this.activeIconColor,
    required this.imagePath,
    this.padding = 2.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final inactiveIconColor =
        this.inactiveIconColor ?? ColorPalette.grey.shade50;
    final activeIconColor =
        this.activeIconColor ?? Theme.of(context).primaryColor;
    return Padding(
      padding: EdgeInsets.all(padding),
      child: SvgPicture.asset(
        imagePath,
        color: isActive ? activeIconColor : inactiveIconColor,
      ),
    );
  }
}
