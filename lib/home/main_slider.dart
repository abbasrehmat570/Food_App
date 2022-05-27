import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:kfc_food_app_demo/utils/colors.dart';
import 'package:kfc_food_app_demo/utils/dimensions.dart';
import 'package:kfc_food_app_demo/widgets/big_text.dart';
import 'package:kfc_food_app_demo/widgets/icon_and_text.dart';
import 'package:kfc_food_app_demo/widgets/small_text.dart';

class MainSlider extends StatefulWidget {
  const MainSlider({Key? key}) : super(key: key);

  @override
  State<MainSlider> createState() => _MainSliderState();
}

class _MainSliderState extends State<MainSlider> {
  // controller display the page item size of a single item
  PageController controller = PageController(viewportFraction: 0.85);

  //for transition   of the left and right side size down

  var currentPageValue = 0.0;
  double _height = Dimensions.pageViewContainer;

  // vertical size (y)
  double scaleFactor = 0.8;

  @override
  void initState() {
    super.initState();

    controller.addListener(() {
      setState(() {
        currentPageValue = controller.page!;
      });
    });
  }

  @override
  void dispose() {
    //When the app is closed the memory will be free and variable store new values
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //slider
        Container(
          margin: EdgeInsets.only(top: Dimensions.height10),
          height: Dimensions.pageView,
          //color: Colors.grey,
          child: PageView.builder(
              controller: controller,
              itemCount: 5,
              itemBuilder: (context, position) {
                return _buildPageItem(position);
              }),
        ),
        DotsIndicator(
          dotsCount: 5,
          position: currentPageValue,
          decorator: DotsDecorator(
            size: const Size.square(9.0),
            activeColor: AppColors.mainColor,
            activeSize: const Size(18.0, 9.0),
            activeShape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          ),
        ),
        SizedBox(height: Dimensions.height30,),
        Container(
          margin: EdgeInsets.only(left: Dimensions.width30),
          child: Row(
            children: [
              BigText(text: "Popular"),
              SmallText(text: "Trending")
            ],
          ),
        )
      ],
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix4 = Matrix4.identity();
//floor() will get the value in int

    // for current slide
    if (index == currentPageValue.floor()) {
      print("current");
      var currentScale = 1 - (currentPageValue - index) * (1 - scaleFactor);
      var currentTransition = _height * (1 - currentScale) / 2;
      matrix4 = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, currentTransition, 0);
    }
    //for right slide
    else if (index == currentPageValue.floor() + 1) {
      print("right");
      var currentScale =
          scaleFactor + (currentPageValue - index + 1) * (1 - scaleFactor);
      var currentTransition = _height * (1 - currentScale) / 2;
      matrix4 = Matrix4.diagonal3Values(1, currentScale, 1);
      matrix4 = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, currentTransition, 0);
    }
    //for left slide

    else if (index == currentPageValue.floor() - 1) {
      print("left");
      var currentScale = 1 - (currentPageValue - index) * (1 - scaleFactor);
      var currentTransition = _height * (1 - currentScale) / 2;
      matrix4 = Matrix4.diagonal3Values(1, currentScale, 1);
      matrix4 = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, currentTransition, 0);
    }

    //for all
    else {
      print("else");
      var currentScale = 0.8;
      var currentTransition = _height * (1 - currentScale) / 2;
      matrix4 = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, currentTransition, 1);
    }

    return Transform(
      transform: matrix4,
      child: Stack(
        children: [
          Container(
            height: Dimensions.pageViewContainer,
            margin: EdgeInsets.only(
                left: Dimensions.width5, right: Dimensions.width5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius20),
              image: const DecorationImage(
                image: AssetImage('assets/images/chrunch_burger.png'),
                fit: BoxFit.cover,
              ),
              //color: Colors.black,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Dimensions.pageViewText,
              margin: EdgeInsets.only(
                  left: Dimensions.height30,
                  right: Dimensions.width30,
                  bottom: Dimensions.width20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                        color: Color(0xffe8e8e8),
                        blurRadius: 5,
                        //offset will define the position shaodw
                        offset: Offset(0, 8)),
                    BoxShadow(color: Colors.white, offset: Offset(-5, 0)),
                    BoxShadow(color: Colors.white, offset: Offset(5, 0)),
                  ]),
              child: Container(
                padding: EdgeInsets.only(
                    left: Dimensions.width20,
                    top: Dimensions.height15,
                    right: Dimensions.width20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(text: "Chicken Piece"),
                    SizedBox(
                      height: Dimensions.height10,
                    ),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(
                              5,
                              (index) => const Icon(
                                    Icons.star,
                                    size: 15,
                                    color: AppColors.mainColor,
                                  )),
                        ),
                        SizedBox(
                          width: Dimensions.width10,
                        ),
                        SmallText(text: "4.7"),
                        SizedBox(
                          width: Dimensions.width10,
                        ),
                        SmallText(text: "1257"),
                        SizedBox(
                          width: Dimensions.width10,
                        ),
                        SmallText(text: "comments"),
                      ],
                    ),
                    SizedBox(
                      height: Dimensions.height10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        IconAndText(
                            iconData: Icons.circle_sharp,
                            text: "Normal",
                            iconColor: AppColors.iconColor1),
                        IconAndText(
                            iconData: Icons.location_on,
                            text: "1.7 Km",
                            iconColor: AppColors.mainColor),
                        IconAndText(
                            iconData: Icons.access_time_rounded,
                            text: "32 min",
                            iconColor: AppColors.iconColor2),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
