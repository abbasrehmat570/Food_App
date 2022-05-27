import 'package:flutter/material.dart';
import 'package:kfc_food_app_demo/utils/colors.dart';

class SmallText extends StatelessWidget {
  final String text;
  final Color? color;
  double size;
  double height;

  SmallText({
    Key? key,
    required this.text,
    this.color = const Color(0xff98918e),
    this.height = 1.2,
    this.size = 12,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        //fontFamily: 'Assistant',

      ),
    );
  }
}
