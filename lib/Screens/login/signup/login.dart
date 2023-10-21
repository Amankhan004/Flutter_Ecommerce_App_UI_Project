import 'package:ecommerce_app_complete_ui_project/Screens/login/signup.dart';
import 'package:ecommerce_app_complete_ui_project/Screens/login/signup/widget/forget_password.dart';
import 'package:ecommerce_app_complete_ui_project/Screens/login/signup/widget/succeful_signin.dart';
import 'package:ecommerce_app_complete_ui_project/utils/App_colors/colors.dart';
import 'package:ecommerce_app_complete_ui_project/utils/services/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';

// ignore: must_be_immutable

class LoginView extends StatefulWidget {
  LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    void switchtoeforget() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => ForgetView()));
    }

    Future<void> signUpWithGoogle(BuildContext context) async {
      try {
        await signInWithGoogle(); // Sign in with Google
        User? user = FirebaseAuth.instance.currentUser;
        if (user != null) {
          // If user is not null, the sign-in was successful
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SuccessfulSignin()),
          );
        } else {
          // Handle error or show a message
          print("Sign-in with Google failed");
        }
      } catch (e) {
        // Handle any exceptions that may occur during sign-in
        print("Error during Google sign-in: $e");
      }
    }

    // Initialize it to true if you want the password to be obscured initially.
    void togglePasswordVisibility() {
      setState(() {
        _obscureText = !_obscureText;
      });
    }

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 226, 226, 226),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: SingleChildScrollView(
          reverse: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              const Center(
                child: Icon(
                  Icons.lock,
                  size: 100,
                ),
              ),
              const SizedBox(height: 50),
              Center(
                child: Text(
                  "Welcome back you\'ve been missed",
                  style: TextStyle(color: Colors.grey.shade700, fontSize: 16),
                ),
              ),
              const SizedBox(height: 25),
              Text(
                "Login",
                style: TextStyle(
                  fontFamily: 'Metropolis',
                  fontSize: 34,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey.shade900,
                ),
                textAlign: TextAlign.left,
              ),
              const SizedBox(height: 30),
              TextField(
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey.shade700,
                ),
                controller: emailcontroller,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey.shade400,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  hintText: "Email",
                  hintStyle: TextStyle(
                    fontSize: 14,
                    color: Colors.grey.shade600,
                  ),
                  fillColor: Colors.grey.shade200,
                  filled: true,
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                obscureText: _obscureText,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey.shade600,
                ),
                controller: passwordcontroller,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility_off : Icons.visibility,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      togglePasswordVisibility();
                    },
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey.shade400,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  hintText: "Password",
                  hintStyle: TextStyle(
                    fontSize: 14,
                    color: Colors.grey.shade600,
                  ),
                  fillColor: Colors.grey.shade200,
                  filled: true,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      switchtoeforget();
                    },
                    child: Text(
                      "Forgot password?",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey.shade900,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Center(
                child: InkWell(
                  onTap: () async {
                    await login(emailcontroller.text, passwordcontroller.text);
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                          builder: (context) => SuccessfulSignin()),
                    );
                  },
                  child: Container(
                    width: 357,
                    height: 48,
                    decoration: BoxDecoration(
                      color: AppColors
                          .lightBlue, // Change this to your desired color
                      borderRadius: BorderRadius.circular(25),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      "LOGIN",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffF5F5F5),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Center(
                child: Text(
                  "Or continue with",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey.shade900,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: () {
                        signUpWithGoogle(context);
                      },
                      child: Image.asset(
                          "Assets/App_images/signupimages/Google.png")),
                  const SizedBox(height: 10),
                  InkWell(
                      onTap: () {
                        // signInWithFacebook();
                      },
                      child: Image.asset(
                          "Assets/App_images/signupimages/Facebook.png")),
                ],
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Not a member?", style: TextStyle(fontSize: 16)),
                  const SizedBox(width: 4),
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpView()),
                    ),
                    child: Text(
                      "Register now",
                      style: TextStyle(
                        color: Colors.blue.shade700,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
