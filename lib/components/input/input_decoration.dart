import 'package:attendance/core/util/constants.dart';
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
InputDecoration outlineInputDecoration(
  BuildContext context, {
  String? label,
}) {
  return InputDecoration(
    label: label != null ? Text(label) : null,
    border: OutlineInputBorder(
      borderSide: BorderSide(
        color: Theme.of(context).primaryColor,
        width: 22,
      ),
      borderRadius: const BorderRadius.all(
        Radius.circular(inputPadding),
      ),
    ),
    contentPadding: const EdgeInsets.all(inputPadding),
  );
}
