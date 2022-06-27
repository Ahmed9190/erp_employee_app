import 'package:attendance/components/gap.dart';
import 'package:flutter/material.dart';

class CForm extends StatelessWidget {
  final List<Widget> children;

  const CForm({
    Key? key,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Gap(children: children);
  }
}
