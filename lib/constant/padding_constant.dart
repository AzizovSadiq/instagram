
import 'package:flutter/cupertino.dart';

class PaddingConstant{
  static PaddingConstant instance = PaddingConstant._init();
  PaddingConstant._init();

  final EdgeInsets horPad20 = const EdgeInsets.symmetric(horizontal: 20);
  final EdgeInsets allPad10 = const EdgeInsets.all(10); 
}