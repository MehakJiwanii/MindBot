import 'package:chatbot/Screens/NavBar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class or extends StatefulWidget {
  const or({super.key});

  @override
  State<or> createState() => _orState();
}

class _orState extends State<or> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('-----------Or continue with------------'),
        SizedBox(
          height: 11,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 50,
              width: 70,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: Color(0xFF343A48)),
                  onPressed: () {
                    LoginWithGoogle(context);
                  },
                  child: Icon(
                    Icons.email_rounded,
                    size: 30,
                  )),
            ),
            SizedBox(
              height: 50,
              width: 70,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: Color(0xFF343A48)),
                  onPressed: () {
                    loginWithFacebook(context);
                  },
                  child: Icon(
                    Icons.facebook_rounded,
                    size: 30,
                  )),
            ),
            SizedBox(
              height: 50,
              width: 70,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: Color(0xFF343A48)),
                  onPressed: () {},
                  child: Icon(
                    Icons.phone,
                    size: 30,
                  )),
            ),
          ],
        ),
      ],
    );
  }
}

LoginWithGoogle(BuildContext context) async {
  GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
  GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
  AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken, idToken: googleAuth?.idToken);
  UserCredential userCredential =
      await FirebaseAuth.instance.signInWithCredential(credential);
  User? user = userCredential.user;
  String displayName = user?.displayName ?? 'Guest';
  String email = user?.email ?? 'No email available';

  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (context) => NavBar(
        displayName: displayName,
        email: email,
      ),
    ),
  );

  // Navigate to the ProfileScreen and pass user information

  print(userCredential.user?.displayName);
}

loginWithFacebook(BuildContext context) async {
  try {
    final LoginResult result = await FacebookAuth.instance.login();

    if (result.status == LoginStatus.success) {
      final AccessToken accessToken = result.accessToken!;
      AuthCredential credential =
          FacebookAuthProvider.credential(accessToken.token);
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);
      User? user = userCredential.user;

      String displayName = user?.displayName ?? 'Guest';
      String email = user?.email ?? 'No email available';

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => NavBar(
            displayName: displayName,
            email: email,
          ),
        ),
      );

      print(user?.displayName);
    } else {
      print('Facebook login failed.');
    }
  } catch (e) {
    print('Error during Facebook login: $e');
  }
}
