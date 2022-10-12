import 'package:flutter/material.dart';

class ColorConstant{
  static ColorConstant instance = ColorConstant._init();
  ColorConstant._init();

  final Color purpleColor = Colors.purple;
  final Color redColor = Colors.red;
  final Color yellowColor = Colors.yellow;
  final Color whiteColor = Colors.white;
  final Color backGroundColorGrey = Colors.grey.shade500;

}