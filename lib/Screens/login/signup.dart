import 'package:ecommerce_app_complete_ui_project/Screens/login/signup/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


// ignore: must_be_immutable
class SignUpView extends StatelessWidget {
  SignUpView({Key? key}) : super(key: key);

  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  

  @override
  Widget build(BuildContext context) {
    void switchtoelogin() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginView()));
    }

    return Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            reverse: true,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 90),
            const    Text(
                  "Sign up",
                  style:  TextStyle(
            fontFamily: 'Metropolis',
            fontSize: 34,
            fontWeight: FontWeight.w700,
            color: Color(0xffF6F6F6),
          ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 60),
                TextField(
                  style: GoogleFonts.metrophobic(
                      fontSize: 14, color: Color(0xffF5F5F5)),
                  controller: namecontroller,
                  decoration: InputDecoration(
                    focusedBorder:const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black, // Border color when focused
                      ),
                    ),
                    hintText: "Full Name",
                    hintStyle:const TextStyle(
                      fontFamily: 'Metropolis',
                      fontSize: 11,
                      color: Color(0xffABB4BD),
                    ),
                    floatingLabelStyle: GoogleFonts.cambo(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color:const Color(0xff979797)),
                    fillColor:const Color(0xff1D1D1D),
                    filled: true,
                    border:const OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff979797))),
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  style: GoogleFonts.metrophobic(
                      fontSize: 14, color: const Color(0xffF5F5F5)),
                  controller: emailcontroller,
                  decoration:const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black, // Border color when focused
                      ),
                    ),
                    hintText: "Email",
                    hintStyle: TextStyle(
                      fontFamily: 'Metropolis',
                      fontSize: 11,
                      color: Color(0xffABB4BD),
                    ),
                    fillColor: Color(0xff1D1D1D),
                    filled: true,
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff979797))),
                  ),
                ),
                const SizedBox(height: 10),
                  TextField(
                  style: GoogleFonts.metrophobic(
                      fontSize: 14, color: const Color(0xffF5F5F5)),
                  controller: emailcontroller,
                  decoration:const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black, // Border color when focused
                      ),
                    ),
                    hintText: "Phone Number",
                    hintStyle: TextStyle(
                      fontFamily: 'Metropolis',
                      fontSize: 11,
                      color: Color(0xffABB4BD),
                    ),
                    fillColor: Color(0xff1D1D1D),
                    filled: true,
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff979797))),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                  style:const TextStyle(
                      fontFamily: 'Metropolis',
                      fontSize: 14,
                      color: Color(0xffF5F5F5)),
                  controller: passwordcontroller,
                  decoration:const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black, // Border color when focused
                      ),
                    ),
                    hintText: "Password",
                    hintStyle: TextStyle(
                      fontFamily: 'Metropolis',
                      fontSize: 14,
                      color: Color(0xffABB4BD),
                    ),
                    fillColor: Color(0xff1D1D1D),
                    filled: true,
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff979797))),
                  ),
                ),
                const SizedBox(height: 10),
                 TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                  style:const TextStyle(
                      fontFamily: 'Metropolis',
                      fontSize: 14,
                      color: Color(0xffF5F5F5)),
                  controller: passwordcontroller,
                  decoration:const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black, // Border color when focused
                      ),
                    ),
                    hintText: "Confirm Password",
                    hintStyle: TextStyle(
                      fontFamily: 'Metropolis',
                      fontSize: 14,
                      color: Color(0xffABB4BD),
                    ),
                    fillColor: Color(0xff1D1D1D),
                    filled: true,
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff979797))),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                 const   Text(
                      "Already have an account?",
                      style: TextStyle(
                          fontFamily: 'Metropolis',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffF6F6F6)),
                      textAlign: TextAlign.right,
                    ),
                    IconButton(
                      
                      icon: Image.asset(
                        
                          'Assets/App_images/signupimages/arrow.png'
                          ), // Use Image.asset instead of Icon
                      onPressed: () {
                        switchtoelogin();
                      },
                    )
                  ],
                ),
                const SizedBox(height: 15),
               
                  
              
                   Center(
                     child: GestureDetector(
                      onTap: () {
                         Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginView()));
                      },
                       child: Container(
                        width: 357,
                        height: 48,
                        decoration: BoxDecoration(
                            color: Color(0xffEF3651),
                            borderRadius: BorderRadius.circular(25)),
                        alignment: Alignment.center,
                        child:const Text(
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
            const  Center(
                child: Text(
                  "Or sign up with social account",
                  style: TextStyle(
                    fontFamily: 'Metropolis',
                    fontSize: 16,
                    color: Color(0xffF6F6F6),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "Assets/App_images/signupimages/Google.png",
                    ),
                    const SizedBox(height: 10),
                    Image.asset(
                      "Assets/App_images/signupimages/Facebook.png",
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
