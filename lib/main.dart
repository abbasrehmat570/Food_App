//Tasks By hour  App bar + Custom Widgets
//PageView.builder  items + sizing + Animations(Transform ) + Box Shadow
// dots indicator +



import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home/main_header.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HomeMainHeader(),

    );
  }
}

