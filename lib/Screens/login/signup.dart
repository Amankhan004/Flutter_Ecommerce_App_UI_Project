import 'package:ecommerce_app_complete_ui_project/Screens/login/signup/login.dart';
import 'package:ecommerce_app_complete_ui_project/Screens/login/signup/widget/succeful_signin.dart';
import 'package:ecommerce_app_complete_ui_project/Widgets/custom_toast.dart';
import 'package:ecommerce_app_complete_ui_project/utils/App_colors/colors.dart';
import 'package:ecommerce_app_complete_ui_project/utils/services/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class SignUpView extends StatefulWidget {
  SignUpView({Key? key}) : super(key: key);

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController phoneNumbercontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confirmPasswordcontroller = TextEditingController();
  bool obscureTextOne = true;
  bool obscureTextTwo = true;

  @override
  Widget build(BuildContext context) {
    void switchtoelogin() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginView()));
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

    void togglePasswordVisibilityOne() {
      setState(() {
        obscureTextOne = !obscureTextOne;
      });
    }

    void togglePasswordVisibilityTwo() {
      setState(() {
        obscureTextTwo = !obscureTextTwo;
      });
    }

    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(statusBarColor: AppColors.lightBlue),
      child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 226, 226, 226),
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              reverse: true,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 90),
                  Text(
                    "Sign up",
                    style: TextStyle(
                      fontFamily: 'Metropolis',
                      fontSize: 34,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey.shade900,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: 40),
                  TextField(
                    style: GoogleFonts.metrophobic(
                      fontSize: 14,
                      color: Colors.grey.shade700,
                    ),
                    controller: namecontroller,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade400,
                        ),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      hintText: "Full Nmae",
                      hintStyle: TextStyle(
                        fontFamily: 'Metropolis',
                        fontSize: 14,
                        color: Colors.grey.shade600,
                      ),
                      fillColor: Colors.grey.shade200,
                      filled: true,
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    style: GoogleFonts.metrophobic(
                      fontSize: 14,
                      color: Colors.grey.shade700,
                    ),
                    controller: emailcontroller,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade400,
                        ),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      hintText: "Email",
                      hintStyle: TextStyle(
                        fontFamily: 'Metropolis',
                        fontSize: 14,
                        color: Colors.grey.shade600,
                      ),
                      fillColor: Colors.grey.shade200,
                      filled: true,
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    style: GoogleFonts.metrophobic(
                      fontSize: 14,
                      color: Colors.grey.shade700,
                    ),
                    controller: phoneNumbercontroller,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade400,
                        ),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      hintText: "Phone Number",
                      hintStyle: TextStyle(
                        fontFamily: 'Metropolis',
                        fontSize: 14,
                        color: Colors.grey.shade600,
                      ),
                      fillColor: Colors.grey.shade200,
                      filled: true,
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    obscureText: obscureTextOne,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                    style: TextStyle(
                      fontFamily: 'Metropolis',
                      fontSize: 14,
                      color: Colors.grey.shade700,
                    ),
                    controller: passwordcontroller,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                          icon: Icon(
                            obscureTextOne
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            togglePasswordVisibilityOne();
                          } // This function is called when the button is pressed.
                          ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade400,
                        ),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      hintText: "Password",
                      hintStyle: TextStyle(
                        fontFamily: 'Metropolis',
                        fontSize: 14,
                        color: Colors.grey.shade600,
                      ),
                      fillColor: Colors.grey.shade200,
                      filled: true,
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    obscureText: obscureTextTwo,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                    style: TextStyle(
                      fontFamily: 'Metropolis',
                      fontSize: 14,
                      color: Colors.grey.shade700,
                    ),
                    controller: confirmPasswordcontroller,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                          icon: Icon(
                            obscureTextTwo
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            togglePasswordVisibilityTwo();
                          } // This function is called when the button is pressed.
                          ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade400,
                        ),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      hintText: "confirm Password",
                      hintStyle: TextStyle(
                        fontFamily: 'Metropolis',
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
                          switchtoelogin();
                        },
                        child: Text(
                          "Already have an account?",
                          style: TextStyle(
                            fontFamily: 'Metropolis',
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
                    child: GestureDetector(
                      onTap: () {
                        signUp(
                          emailcontroller.text,
                          passwordcontroller.text,
                        );
                        addUsers(
                          namecontroller.text,
                          phoneNumbercontroller.text,
                        );
                        if (passwordcontroller.text !=
                            confirmPasswordcontroller.text) {
                          showCustomToast("Confirm Your Password");
                        } else {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginView()));
                        }
                      },
                      child: Container(
                        width: 357,
                        height: 48,
                        decoration: BoxDecoration(
                            color: AppColors.lightBlue,
                            borderRadius: BorderRadius.circular(25)),
                        alignment: Alignment.center,
                        child: const Text(
                          "SIGN UP",
                          style: TextStyle(
                              fontFamily: 'Metropolis',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffF5F5F5)),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Center(
                    child: Text(
                      "Or continue with",
                      style: TextStyle(
                        fontFamily: 'Metropolis',
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
                      InkWell(
                        onTap: () async {
                          signUpWithGoogle(context);
                          //                       UserCredential userCredential =
                          //     await FirebaseAuth.instance.signInWithCredential(credential);
                          // if (userCredential.user != null) {
                          //    Navigator.push(
                          //   context as BuildContext,
                          //   MaterialPageRoute(builder: (context) => const SuccessfulSignin()),
                          // );

                          // }
                        },
                        child: Image.asset(
                          "Assets/App_images/signupimages/Google.png",
                        ),
                      ),
                      const SizedBox(height: 10),
                      InkWell(
                        onTap: () {
                          // signInWithFacebook();
                        },
                        child: Image.asset(
                          "Assets/App_images/signupimages/Facebook.png",
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )),
    );
  }
}
