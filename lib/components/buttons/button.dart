import 'package:attendance/core/util/constants.dart';
import 'package:flutter/material.dart';

import 'package:attendance/core/util/color_palettes.dart';

class Button extends StatelessWidget {
  final String label;
  final Color color;
  final void Function() onPressed;
  final double height;
  final double? fontSize;

  const Button({
    Key? key,
    required this.label,
    this.color = ColorPalette.primary,
    required this.onPressed,
    this.height = 50,
    this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: color,
        minimumSize: Size.fromHeight(height),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        label,
        style: TextStyle(fontSize: fontSize ?? height * 0.382),
      ),
    );
  }
}
