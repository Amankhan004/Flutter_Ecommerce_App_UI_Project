import 'package:ecommerce_app_complete_ui_project/Screens/Home_View/home_view.dart';
import 'package:ecommerce_app_complete_ui_project/Screens/Intro_Screnn/onboardin_view/onboarding_view_01.dart';
import 'package:ecommerce_app_complete_ui_project/Screens/login/signup/login.dart';
import 'package:ecommerce_app_complete_ui_project/utils/services/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final bool showOnboarding = prefs.getBool('showOnboarding') ?? true;
  final bool isUserSignedIn = checkUserSignInStatus(); // Replace this with your function to check user sign-in status

  runApp(MyApp(showOnboarding: showOnboarding, isUserSignedIn: isUserSignedIn));
}

class MyApp extends StatelessWidget {
  final bool showOnboarding;
  final bool isUserSignedIn;

  MyApp({required this.showOnboarding, required this.isUserSignedIn});

  @override
  Widget build(BuildContext context) {
    // Check if the user is signed in and show LoginView if they are not
    if (!isUserSignedIn) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginView(),
      );
    }

    // Show the onboarding or home view based on the 'showOnboarding' flag
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: showOnboarding ? OnBoardingOne() : HomeView(),
    );
  }
}
