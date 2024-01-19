import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  bool showSpinner = false;
  String email = '';
  String password = '';
  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Column(
          children: [
            Text('Recieve an Email To\n Reset Your Password',
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                )),
            SizedBox(
              height: 29,
            ),
            SizedBox(
              width: 350,
              child: TextFormField(
                onChanged: (value) {
                  email = value;
                },
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  hintText: "Email",
                  hintStyle: GoogleFonts.montserrat(),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Color(0xFF343A48))),
                  prefixIcon: Icon(
                    Icons.email,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 29,
            ),
            Container(
              width: 357,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF343A48)),
                  onPressed: () {},
                  child: Text(
                    "Reset Password",
                    style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  )),
            ),
          ],
        ),
      ),
    ));
  }
}
