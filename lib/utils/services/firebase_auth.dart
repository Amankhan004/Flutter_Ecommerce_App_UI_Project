import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

Future<void> signUp(String emailAddress, String password) async {
  await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: emailAddress,
    password: password,
  );
}

Future<String> login(String emailAddress, String password) async {
  try {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailAddress,
      password: password,
    );
    // If login is successful, return a success message or a token if needed
    return "success";
  } on FirebaseAuthException catch (e) {
    // Handle specific FirebaseAuth exceptions
    String errorMessage = "Login failed. ";
    if (e.code == 'user-not-found') {
      errorMessage += "No user found for this email.";
    } else if (e.code == 'wrong-password') {
      errorMessage += "Invalid password.";
    } else {
      errorMessage += "An error occurred: ${e.code}.";
    }
    // Return the error message to display it in your toast
    return errorMessage;
  } catch (e) {
    // Handle other exceptions or errors
    return "An error occurred: $e";
  }
}

Future<void> signOutEmail() async {
  await FirebaseAuth.instance.signOut();
}

Future addUsers(String firstNmae, String phoneNumber) async {
  await FirebaseFirestore.instance
      .collection("users")
      .add({"firstName": firstNmae, "phoneNumber": phoneNumber});
}

Future<String> getUserNameFromFirestore() async {
  final user = FirebaseAuth.instance.currentUser;

  if (user != null) {
    final userQuery = await FirebaseFirestore.instance
        .collection('users')
        .where('uid', isEqualTo: user.uid)
        .limit(1)
        .get();

    if (userQuery.docs.isNotEmpty) {
      final userDoc = userQuery.docs.first;
      return userDoc.get('firstName');
    } else {
      return "User document not found";
    }
  } else {
    return "User not authenticated";
  }
}

// google signin

Future<UserCredential> signInWithGoogle() async {
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  final GoogleSignInAuthentication? googleAuth =
      await googleUser?.authentication;

  AuthCredential credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );

  UserCredential userCredential =
      await FirebaseAuth.instance.signInWithCredential(credential);
  print(userCredential.user?.displayName);
  return await FirebaseAuth.instance.signInWithCredential(credential);
}

bool checkUserSignInStatus() {
  final user = FirebaseAuth.instance.currentUser;
  return user != null; // Return true if the user is signed in, false otherwise
}

// google signout

Future<void> signOut() async {
  try {
    await GoogleSignIn().signOut();
    await FirebaseAuth.instance.signOut();
  } catch (e) {
    print("Error during sign-out: $e");
  }
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