import 'dart:math';

import 'package:flutter/material.dart';

class Mirror extends StatelessWidget {
  final Widget child;

  const Mirror({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.center,
      transform: Matrix4.rotationY(pi),
      child: child,
    );
  }
}
