import 'package:ecommerce_app_complete_ui_project/Screens/Intro_Screnn/onboardin_view/custom_onboarding_screen.dart';
import 'package:ecommerce_app_complete_ui_project/Screens/Intro_Screnn/onboardin_view/onboarding_view_02.dart';
import 'package:flutter/material.dart';

class OnBoardingOne extends StatelessWidget {
  const OnBoardingOne({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = PageController();
    return Scaffold(
      body: PageView(
        controller: controller,
        children: [
          CustomIntroScreen(
            controller: controller,
            text1: "Your holiday\nshopping\ndelivered to Screen",
            text2: "one",
            text3:
                "'There's something for everyone\n to enjoy with Sweet Shop\n Favourites Screen 1",
            displayAnimation1: true,
            animation2: "lib/utils/Animation - 1694687825379.json",
            animation1: "lib/utils/Animation - 1694687878907.json",
            animation1Height: 330.0,
            animation2Height: 220.0,
            screenPadding:const EdgeInsets.fromLTRB(56, 0, 0, 0),
          ),
          OnBoardingTwo(controller: controller)
        ],
      ),
    );
  }
}
