import 'package:ecommerce_app_complete_ui_project/utils/App_colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgetView extends StatefulWidget {
  ForgetView({Key? key}) : super(key: key);

  @override
  _ForgetViewState createState() => _ForgetViewState();
}

class _ForgetViewState extends State<ForgetView> {
  TextEditingController emailcontroller = TextEditingController();
  FocusNode emailFocusNode = FocusNode();
  bool showError = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 226, 226, 226),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 80),
            Text(
              "Forgot password",
              style: TextStyle(
                fontFamily: 'Metropolis',
                fontSize: 34,
                fontWeight: FontWeight.w700,
                color: Colors.grey.shade900,
              ),
              textAlign: TextAlign.left,
            ),
            const SizedBox(height: 50),
            Center(
              child: Text(
                "Please, enter your email address. You will receive a link to create a new password via email.",
                style: TextStyle(
                  fontFamily: 'Metropolis',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey.shade900,
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              style: GoogleFonts.metrophobic(
                fontSize: 14,
                color: Color(0xffF5F5F5),
              ),
              controller: emailcontroller,
              focusNode: emailFocusNode, // Assign focus node
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
            const SizedBox(height: 25),
            InkWell(
              onTap: () {
                // Check if the entered email matches the valid email
              },
              child: Center(
                child: Container(
                  width: 357,
                  height: 48,
                  decoration: BoxDecoration(
                    color: AppColors.lightBlue,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "SEND",
                    style: TextStyle(
                      fontFamily: 'Metropolis',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffF5F5F5),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
