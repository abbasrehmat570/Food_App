import 'package:flutter/material.dart';
import 'package:kfc_food_app_demo/utils/colors.dart';

class HomeMainHeader extends StatelessWidget {
  const HomeMainHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //appBar: AppBar(),
        body: Column(
          children: [
            Container(
              child: Container(
                margin: EdgeInsets.only(top: 10, bottom: 15),
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text("Contry"),
                        Text("City"),
                      ],
                    ),
                    Center(
                      child: Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AppColors.mainColor,
                        ),
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
