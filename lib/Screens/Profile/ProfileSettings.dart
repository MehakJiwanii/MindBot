import 'package:chatbot/Screens/Homepage.dart';
import 'package:chatbot/Screens/Profile/ProfileInfo.dart';
import 'package:chatbot/Screens/Profile/profile.dart';
import 'package:chatbot/Screens/Profile/savedbenificiery.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';

class ProfileSettings extends StatelessWidget {
  const ProfileSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343,
      height: 420,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
            ),
            onPressed: () async {
              // var userCredential;
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()));
            },
            child: Container(
              height: 60,
              width: 350,
              //color: Colors.amber,
              child: Row(children: [
                Container(
                    width: 35,
                    height: 40,
                    decoration: ShapeDecoration(
                      color: Color(0xFFF4F3F1),
                      shape: OvalBorder(),
                    ),
                    child: Icon(
                      Icons.person_outline,
                      color: Colors.black,
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 9.0),
                  child: Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 24.0),
                          child: Container(
                            width: 156,
                            height: 18,
                            child: Positioned(
                              left: 0,
                              top: 0,
                              child: Text(
                                '  My Account',
                                style: GoogleFonts.dmSans(
                                  color: Color(0xFF181D27),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  height: 0.12,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 23,
                          child: Container(
                            child: Text(
                              'Make changes to your Account',
                              style: GoogleFonts.dmSans(
                                color: Color(0xFFABABAB),
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                                height: 0.13,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                )
              ]),
            ),
          ),
        ),
        // MY ACCOUNT

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
            ),
            onPressed: () async {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BeneficiaryScreen()));
            },
            child: Container(
              height: 60,
              width: 350,
              //color: Colors.amber,
              child: Row(children: [
                Container(
                    width: 35,
                    height: 40,
                    decoration: ShapeDecoration(
                      color: Color(0xFFF4F3F1),
                      shape: OvalBorder(),
                    ),
                    child: Icon(
                      Icons.contact_page_outlined,
                      color: Colors.black,
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 9.0),
                  child: Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 24.0),
                          child: Container(
                            width: 156,
                            height: 18,
                            child: Positioned(
                              left: 0,
                              top: 0,
                              child: Text(
                                'Saved Benificiery',
                                style: GoogleFonts.dmSans(
                                  color: Color(0xFF181D27),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  height: 0.12,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 23,
                          child: Container(
                            child: Text(
                              'Connect with your emergency contacts',
                              style: GoogleFonts.dmSans(
                                color: Color(0xFFABABAB),
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                                height: 0.13,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                )
              ]),
            ),
          ),
        ),
//
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
            ),
            onPressed: () async {
              var userCredential;
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfileScreen(),
                  ));
            },
            child: Container(
              height: 60,
              width: 350,
              //color: Colors.amber,
              child: Row(children: [
                Container(
                    width: 35,
                    height: 40,
                    decoration: ShapeDecoration(
                      color: Color(0xFFF4F3F1),
                      shape: OvalBorder(),
                    ),
                    child: Icon(
                      Icons.share_outlined,
                      color: Colors.black,
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 9.0),
                  child: Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 24.0),
                          child: Container(
                            width: 156,
                            height: 18,
                            child: Positioned(
                              left: 0,
                              top: 0,
                              child: Text(
                                '        Recommend Us',
                                style: GoogleFonts.dmSans(
                                  color: Color(0xFF181D27),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  height: 0.12,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 23,
                          child: Container(
                            child: Text(
                              'Refer us to a friend in need',
                              style: GoogleFonts.dmSans(
                                color: Color(0xFFABABAB),
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                                height: 0.13,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                )
              ]),
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
            ),
            onPressed: () async {
              var userCredential;
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()));
            },
            child: Container(
              height: 60,
              width: 350,
              //color: Colors.amber,
              child: Row(children: [
                Container(
                    width: 35,
                    height: 40,
                    decoration: ShapeDecoration(
                      color: Color(0xFFF4F3F1),
                      shape: OvalBorder(),
                    ),
                    child: Icon(
                      Icons.phonelink_lock_outlined,
                      color: Colors.black,
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 9.0),
                  child: Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 24.0),
                          child: Container(
                            width: 156,
                            height: 18,
                            child: Positioned(
                              left: 0,
                              top: 0,
                              child: Text(
                                'Terms & Policies',
                                style: GoogleFonts.dmSans(
                                  color: Color(0xFF181D27),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  height: 0.12,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                )
              ]),
            ),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Container(
          width: 160,
          height: 60,
          decoration: ShapeDecoration(
            color: Color(0xFF353A48),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            shadows: [
              BoxShadow(
                color: Color(0x3F000000),
                blurRadius: 8,
                offset: Offset(0, 4),
                spreadRadius: 0,
              )
            ],
          ),
          child: ElevatedButton(
              style:
                  ElevatedButton.styleFrom(backgroundColor: Color(0xFF353A48)),
              onPressed: () async {
                try {
                  // Attempt to sign out
                  await GoogleSignIn().signOut();
                  await FirebaseAuth.instance.signOut();

                  // If sign-out is successful, navigate to the home screen
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Homepage(),
                      )); // Replace '/home' with your actual home screen route
                } catch (e) {
                  // Handle sign-out failure if needed
                  print('Error during sign-out: $e');
                }
              },
              child: Text(
                "Logout",
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              )),
        ),
        // Container(
        //   width: 250,
        //   height: 50,
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.all(Radius.circular(10)),
        //   ),
        //   child: ElevatedButton(
        //       style:
        //           ElevatedButton.styleFrom(backgroundColor: Color(0xFF343A48)),
        //       onPressed: () async {
        //         try {
        //           // Attempt to sign out
        //           await GoogleSignIn().signOut();
        //           await FirebaseAuth.instance.signOut();

        //           // If sign-out is successful, navigate to the home screen
        //           Navigator.push(
        //               context,
        //               MaterialPageRoute(
        //                 builder: (context) => Homepage(),
        //               )); // Replace '/home' with your actual home screen route
        //         } catch (e) {
        //           // Handle sign-out failure if needed
        //           print('Error during sign-out: $e');
        //         }
        //       },
        //       child: Text(
        //         "LogOut",
        //         style: GoogleFonts.montserrat(
        //             color: Colors.white,
        //             fontSize: 20,
        //             fontWeight: FontWeight.w500),
        //       )),
        // ),
      ]),
    );
  }
}

UserInfo(BuildContext context) async {
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
      builder: (context) => Profile(
        displayName: displayName,
        email: email,
      ),
    ),
  );

  print(userCredential.user?.displayName);
}
