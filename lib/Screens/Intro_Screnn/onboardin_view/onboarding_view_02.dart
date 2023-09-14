import 'package:ecommerce_app_complete_ui_project/Screens/Intro_Screnn/onboardin_view/custom_onboarding_screen.dart';
import 'package:flutter/material.dart';

class OnBoardingTwo extends StatelessWidget {
  const OnBoardingTwo({super.key, this.controller});
  final PageController? controller;

  @override
  Widget build(BuildContext context) {
    return CustomIntroScreen(
      controller: controller,
      text1: "Your holiday\nshopping\ndelivered to Screen",
      text2: "Two",
      text3:
          "'There's something for everyone\n to enjoy with Sweet Shop\n Favourites Screen 1",
      displayAnimation1: false,
      animation2: "lib/utils/Animation - 1694687825379.json",
      animation1: "lib/utils/Animation - 1694687878907.json",
      animation1Height: 300.0,
      animation2Height: 270.0,
        screenPadding:const EdgeInsets.fromLTRB(56, 47, 0, 0),

      
    );
    
  }
}
