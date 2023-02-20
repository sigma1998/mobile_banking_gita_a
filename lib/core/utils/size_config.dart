import 'package:flutter/cupertino.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? _screenWidth;
  static double? _screenHeight;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    _screenWidth = _mediaQueryData!.size.width;
    _screenHeight = _mediaQueryData!.size.height;
  }

  static double get width => _screenWidth ?? 0;

  static double get height => _screenHeight ?? 0;


  static double calculateHor(double width) {
    return (width / 390) * _screenWidth!;
  }

  static double calculateVer(double height) {
    return (height / 844) * _screenHeight!;
  }
}