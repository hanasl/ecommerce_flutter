import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../constance.dart';
import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  final String text;

  final Function onPress;

  const CustomButton({super.key, required this.text, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(10.0),
      ),
      padding: EdgeInsets.all(10),
      onPressed: onPress(),
      color: primaryColor,
      child: CustomText(
        alignment: Alignment.center,
        text: text,
        color: Colors.white,
        fontSize: 0,
        height: 0,
        maxLine: 1,
      ),
    );
  }
}
