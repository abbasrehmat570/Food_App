import 'package:flutter/material.dart';
import 'package:kfc_food_app_demo/utils/colors.dart';
import 'package:kfc_food_app_demo/utils/dimensions.dart';

class BigText extends StatelessWidget {
  final String text;
  final Color? color;
  double size;
  TextOverflow overflow;

  BigText({
    Key? key,
    required this.text,
    this.color = const Color(0xFF332d2b),
    this.overflow = TextOverflow.ellipsis,
    this.size = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        overflow: overflow,
        fontSize: size ==0 ? Dimensions.font20 : size,
        fontWeight: FontWeight.w300,
        fontFamily: 'Bebas',

      ),
    );
  }
}
