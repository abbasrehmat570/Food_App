import 'package:get/get.dart';

/*
mine pixel 5
782h
392w

dbs tech iphone 12
844h


first you have to know the x-factor x=screen height/widget height
widget height = 320
x = 2.44
static double pageView = screenHeight / 2.44; //320

 */

class Dimensions {
// device height and width
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  //pageView
// =782/320
  static double pageView = screenHeight / 2.44; //320
  static double pageViewContainer = screenHeight / 3.55; //220
  static double pageViewText = screenHeight / 6.51; //120

// Dynamic height
  static double height5 = screenHeight / 156.4; //5
  static double height10 = screenHeight / 78.2; //10
  static double height15 = screenHeight / 52.13; //15
  static double height20 = screenHeight / 39.1; //20
  static double height30 = screenHeight / 26.07; //30
  static double height45 = screenHeight / 17.38; //45

//Dynamic  width 392
  static double width5 = screenWidth / 78.4;
  static double width10 = screenWidth / 39.2;
  static double width15 = screenWidth / 26.13;
  static double width20 = screenWidth / 19.6;
  static double width30 = screenWidth / 13.06;
  static double width45 = screenWidth / 8.71;

  // dynamic radius
  static double radius10 = screenHeight/78.2;
  static double radius15 = screenHeight/52.13;
  static double radius20 = screenHeight/39.1;
  static double radius30 = screenHeight/26.07;



  static double font20 = screenHeight / 39.1;
  static double icon24 = screenHeight / 32.58;


}
