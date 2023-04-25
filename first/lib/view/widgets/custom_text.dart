import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomText extends StatelessWidget {
  final String text;

  final double fontSize;

  final Color color;

  final Alignment alignment;

  final int maxLine;
  final double height;

  const CustomText(
      {super.key,
      required this.text,
      required this.fontSize,
      required this.color,
      required this.alignment,
      required this.maxLine,
      required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: Text(
        text,
        style: TextStyle(
          color: color,
          height: height,
          fontSize: fontSize,
        ),
        maxLines: maxLine,
      ),
    );
  }
}
