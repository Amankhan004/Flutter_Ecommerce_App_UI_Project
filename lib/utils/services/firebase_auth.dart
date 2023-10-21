import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_app_complete_ui_project/Screens/login/signup/widget/succeful_signin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';


Future<void> signUp(String emailAddress, String password) async {
  await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: emailAddress,
    password: password,
  );
}

Future login(String emailAddress, String password) async {
  await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: emailAddress,
    password: password,
  );
}

Future addUsers(String firstNmae, String phoneNumber) async {
  await FirebaseFirestore.instance
      .collection("users")
      .add({"firstName": firstNmae, "phoneNumber": phoneNumber});
}

// Future<String> getUserNameFromFirestore() async {
//   final user = FirebaseAuth.instance.currentUser;

//   if (user != null) {
//     final userQuery = await FirebaseFirestore.instance.collection('users')
//         .where('uid', isEqualTo: user.uid)
//         .limit(1)
//         .get();

//     if (userQuery.docs.isNotEmpty) {
//       final userDoc = userQuery.docs.first;
//       return userDoc.get('firstName');
//     } else {
//       return "User document not found";
//     }
//   } else {
//     return "User not authenticated";
//   }
// }


// google signin

Future<UserCredential> signInWithGoogle() async {
  // Trigger the authentication flow
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  // Obtain the auth details from the request
  final GoogleSignInAuthentication? googleAuth =
      await googleUser?.authentication;

  // Create a new credential
  AuthCredential credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );

  // Once signed in, return the UserCredential
  UserCredential userCredential =
      await FirebaseAuth.instance.signInWithCredential(credential);
  print(userCredential.user?.displayName);
  return await FirebaseAuth.instance.signInWithCredential(credential);
}

// google signout

// Future<void> signOut() async {
//   try {
//     await GoogleSignIn().signOut(); // Sign out from Google Sign-In
//     await FirebaseAuth.instance.signOut(); // Sign out from Firebase Authentication
//   } catch (e) {
//     // Handle any exceptions that may occur during sign-out
//     print("Error during sign-out: $e");
//   }
// }

Future<void> signOut() async {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  return firebaseAuth.signOut();
}




//facebook authentication


// Future<UserCredential> signInWithFacebook() async {
//   // Trigger the sign-in flow
//   final LoginResult loginResult = await FacebookAuth.instance.login();

//   // Create a credential from the access token
//   final OAuthCredential facebookAuthCredential = FacebookAuthProvider.credential(loginResult.accessToken!.token);

//   // Once signed in, return the UserCredential
//   return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
// }