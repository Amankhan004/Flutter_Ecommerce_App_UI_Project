import 'package:ecommerce_app_complete_ui_project/Screens/Intro_Screnn/onboardin_view/widget/get_started_button.dart';
import 'package:ecommerce_app_complete_ui_project/utils/App_colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomIntroScreen extends StatelessWidget {
  const CustomIntroScreen(
      {super.key,
      this.text1,
      this.text2,
      this.text3,
      this.controller,
      required this.displayAnimation1,
      required this.animation1,
      required this.animation2,
      this.animation1Height,
      this.animation2Height, this.screenPadding});

  final String? text1;
  final String? text2;
  final String? text3;
  final String animation1;
  final String animation2;
  final bool displayAnimation1;
  final double? animation1Height;
  final double? animation2Height;
    final EdgeInsets? screenPadding;
  final PageController? controller;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        statusBarColor: AppColors.lightBlue,
      ),
      child: Scaffold(
        backgroundColor: AppColors.lightBlue,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(50, 30, 0, 30),
          child: SizedBox(
            // width: 306,
            // height: 290,
            child: Column(
              // mainAxisSize: MainAxisSize.min,
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text1 ?? "",
                  style: GoogleFonts.manrope(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      color: AppColors.textWhite),
                ),
                Row(
                  children: [
                    Text(
                      text2 ?? "",
                      style: GoogleFonts.manrope(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          color: AppColors.textWhite),
                    ),
                    const SizedBox(
                      width: 35,
                    ),
                    const Image(
                        image: AssetImage("Assets/App_images/Emoji.png"))
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  text3 ?? "",
                  // "'There's something for everyone\n to enjoy with Sweet Shop\n Favourites Screen 1",
                  style: GoogleFonts.manrope(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: AppColors.textgrey,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5, top: 10),
                    child: SmoothPageIndicator(
                        effect: const ExpandingDotsEffect(
                            dotColor: Color.fromARGB(255, 114, 157, 243),
                            activeDotColor: AppColors.textWhite,
                            dotHeight: 12,
                            spacing: 10),
                        controller: controller ?? PageController(),
                        count: 2),
                  ),
                ),
                // const SizedBox(
                //   height: 70,
                // ),
                Align(
                  alignment: const AlignmentDirectional(-0.7, 0),
                  child: LottieBuilder.asset(
                    displayAnimation1 ? animation1 : animation2,
                    height: displayAnimation1
                        ? (animation1Height ??
                            250.0) // Use animation1Height if provided
                        : (animation2Height ?? 250.0),
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: screenPadding ??const EdgeInsets.fromLTRB(56, 0, 0, 0),
                  child: const GetStartedButton(),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
