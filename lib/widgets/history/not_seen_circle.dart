import 'package:attendance/core/util/color_palettes.dart';
import 'package:flutter/cupertino.dart';

class NotSeenCircle extends StatelessWidget {
  const NotSeenCircle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: ColorPalette.primary,
      ),
      width: 10.0,
      height: 10.0,
    );
  }
}
