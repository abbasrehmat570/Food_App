import 'package:flutter/material.dart';
import 'package:kfc_food_app_demo/utils/dimensions.dart';
import 'package:kfc_food_app_demo/widgets/small_text.dart';

class IconAndText extends StatelessWidget {
  final IconData iconData;
  final String text;
  final Color iconColor;

  const IconAndText({
    Key? key,
    required this.iconData,
    required this.text,
    required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(iconData,color: iconColor,size: Dimensions.icon24,),
        SizedBox(width: Dimensions.width5,),
        SmallText(text: text),
      ],
    );
  }
}
