import 'package:ecommerce_app_complete_ui_project/Screens/Home_View/home_view.dart';
import 'package:ecommerce_app_complete_ui_project/Screens/bottom_navbar/bottom_navbar.dart';
import 'package:ecommerce_app_complete_ui_project/Screens/login/signup/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class SuccessfulSignin extends StatelessWidget {
  const SuccessfulSignin({Key? key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
         return MainMenuView();

         
          } else {
            // User is not authenticated, show the login view.
            return LoginView();
          }
        }

       
       
      
    );
  }
}
