import 'package:flutter/material.dart';
import 'package:kfc_food_app_demo/home/main_slider.dart';
import 'package:kfc_food_app_demo/utils/colors.dart';
import 'package:kfc_food_app_demo/utils/dimensions.dart';
import 'package:kfc_food_app_demo/widgets/small_text.dart';
import 'package:dots_indicator/dots_indicator.dart';
import '../widgets/big_text.dart';

class HomeMainHeader extends StatelessWidget {
  const HomeMainHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String countryName = "Pakistan" , cityName = "Lahore";

    return SafeArea(
      child: Scaffold(
        //appBar: AppBar(),
        body: Column(
          children: [
            // Header Container like Appbar
            Container(
              child: Container(
                margin: EdgeInsets.only(top: Dimensions.height10, bottom: Dimensions.height15),
                padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        BigText(text: countryName, color: AppColors.mainColor),
                        Center(
                          child: Row(
                            children: [
                              SmallText(text: cityName,color: Colors.black54,),
                              Icon(Icons.arrow_drop_down_rounded),
                            ],
                          ),
                        )
                      ],
                    ),
                    Center(
                      child: Container(
                        height: Dimensions.height45,
                        width: Dimensions.width45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Dimensions.radius15),
                          color: AppColors.mainColor,
                        ),
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: Dimensions.icon24,
                        ),
                      ),
                    )
                  ],
                ),
              ),

            ),

            //Main Slider
            MainSlider(),

          ],
        ),
      ),
    );
  }
}


