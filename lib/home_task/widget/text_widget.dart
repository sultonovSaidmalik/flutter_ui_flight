import 'package:flutter/material.dart';
class TextWidget extends StatelessWidget {
  final String text;
  final double size;
  final FontWeight fontWeight;
  final String fontFamily;
  final Color color;

  const TextWidget({
    Key? key,
    required this.text,
    required this.size,
    required this.fontWeight,
    required this.fontFamily,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: size,
          fontWeight: fontWeight,
          fontFamily: fontFamily,
          color: color),
    );
  }
}
