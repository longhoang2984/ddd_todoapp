import 'package:flutter/material.dart';
import 'package:icecream_todo/gen/colors.gen.dart';

Widget getLinearGradientView({
  required Widget child,
  Alignment begin = Alignment.topLeft,
  Alignment end = Alignment.bottomRight,
  List<Color> colors = const [
    ColorName.gradientPrimaryFirst,
    ColorName.gradientPrimarySecond,
  ],
  double radius = 0.0,
}) {
  return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: begin,
        end: end,
        colors: colors,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(radius),
      ),
    ),
    child: child,
  );
}
