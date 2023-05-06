import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData?
      _mediaQueryData; // cung cấp thông tin kích thước của thiết bị
  static double screenWidth = 0.0;
  static double screenHeight = 0.0;
  static double defaultSize = 0.0;
  static Orientation? orientation; // cung cấp hươớng hiện tại của thiết bị
  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    orientation = _mediaQueryData!.orientation;
    defaultSize =
        orientation == Orientation.landscape // landscape: chế độ nằm ngang
            ? screenHeight * 0.024
            : screenWidth * 0.024;
  }
}
