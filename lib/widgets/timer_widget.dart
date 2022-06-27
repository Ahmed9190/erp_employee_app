import 'dart:async';
import 'dart:math';

import 'package:attendance/features/data/duration_time.dart';
import 'package:attendance/painters/arc_painter.dart';
import 'package:attendance/core/util/color_palettes.dart';
import 'package:flutter/material.dart';

class TimerWidget extends StatefulWidget {
  final Duration maxTime;

  const TimerWidget({
    Key? key,
    required this.radius,
    required this.maxTime,
  }) : super(key: key);

  final double radius;

  @override
  State<TimerWidget> createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  late final DurationTime durationTime;

  @override
  void initState() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      // time = time.

      // .difference(Duration.hoursPerDay)
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: ArcPainter(
        percentage: 0.9,
        backgroundColor: ColorPalette.lightGrey,
        fillColor: Theme.of(context).primaryColor,
        radius: widget.radius / 2,
      ),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Theme.of(context).primaryColor,
        ),
        width: widget.radius - 40,
        height: widget.radius - 40,
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              const Text(
                "07:30",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 60.0,
                  height: 1.5,
                ),
              ),
              Transform(
                alignment: Alignment.center, //Default is left
                transform: Matrix4.rotationY(pi)
                  ..translate(0.0, 50.0), //Mirror Widget
                child: const Icon(
                  Icons.exit_to_app,
                  size: 30.0,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
