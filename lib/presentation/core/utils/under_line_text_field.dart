import 'package:flutter/material.dart';

UnderlineInputBorder getUnderLineBorder(Color color, {double width = 2.0}) {
  return UnderlineInputBorder(
    borderSide: BorderSide(
      color: color,
      width: width,
    ),
  );
}
