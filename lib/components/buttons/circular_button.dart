import 'package:flutter/material.dart';

import 'package:attendance/core/util/constants.dart';

class CircularButton extends StatelessWidget {
  final double radius;
  final Widget child;
  final void Function() onPressed;

  final Color? fillColor;
  final Color? splashColor;
  final Color? highlightColor;

  const CircularButton({
    Key? key,
    required this.radius,
    required this.child,
    required this.onPressed,
    this.fillColor,
    this.splashColor,
    this.highlightColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        color: fillColor,
        child: InkWell(
          splashColor: splashColor,
          highlightColor: highlightColor,
          onTap: onPressed,
          child: Padding(
            padding: const EdgeInsets.all(Paddings.small),
            child: SizedBox(
              width: radius,
              height: radius,
              child: Center(child: child),
            ),
          ),
        ),
      ),
    );
  }
}
