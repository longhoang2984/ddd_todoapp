import 'package:flutter/material.dart';

class SizeConfig {
  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static Orientation orientation(BuildContext context) {
    return MediaQuery.of(context).orientation;
  }

  static double getProportionateScreenHeight(
      BuildContext context, double inputHeight) {
    final double screenHeight = SizeConfig.screenHeight(context);
    const designerHeight = 812.0;
    return (inputHeight / designerHeight) * screenHeight;
  }

  static double getProportionateScreenWidth(
      BuildContext context, double inputWidth) {
    final double screenWidth = SizeConfig.screenWidth(context);
    const designerWidth = 375.0;
    return (inputWidth / designerWidth) * screenWidth;
  }
}
