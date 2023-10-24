import 'package:ecommerce_app_complete_ui_project/Screens/login/signup/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore: must_be_immutable
class GetStartedButton extends StatelessWidget {
  bool oneTime = true;
  GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setBool('showOnboarding', false);
        Navigator.pushAndRemoveUntil(context,
            MaterialPageRoute(builder: (_) => LoginView()), ((route) => false));
        // Navigator.push(context, MaterialPageRoute(builder: (_)=>  MainMenuView()));
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        height: 70,
        width: 220,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Get Started",
              style: GoogleFonts.manrope(fontSize: 19, color: Colors.black),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8.0, bottom: 8, left: 12),
              child: Icon(
                Icons.arrow_forward,
                size: 24,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
