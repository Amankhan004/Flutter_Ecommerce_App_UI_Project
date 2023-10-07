import 'package:ecommerce_app_complete_ui_project/Screens/Intro_Screnn/onboardin_view/onboarding_view_01.dart';
import 'package:flutter/material.dart';

void main()=>runApp(const MyApp()); 


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    
    return const MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home:OnBoardingOne() ,
      // home:SignUpView() ,
    );
  }
}