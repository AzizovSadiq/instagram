import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
    required this.text,
    this.size,
    this.fontWeight,
    this.textColor,
  });
  final String text;
  final double? size;
  final FontWeight? fontWeight;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        color: textColor,
        fontWeight: fontWeight,
      ),
    );
  }
}
