// import 'package:chatbot/Screens/Profile/ProfileInfo.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:google_sign_in/google_sign_in.dart';

// LoginWithGoogle(BuildContext context) async {
//   GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
//   GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
//   AuthCredential credential = GoogleAuthProvider.credential(
//       accessToken: googleAuth?.accessToken, idToken: googleAuth?.idToken);
//   UserCredential userCredential =
//       await FirebaseAuth.instance.signInWithCredential(credential);

//   // User? user = userCredential.user;
//   // String displayName = user?.displayName ?? 'Guest';
//   // String email = user?.email ?? 'No email available';
//   Navigator.pushReplacement(
//     context,
//     MaterialPageRoute(builder: (context) => ProfileScreen()),
//   );
// }
