import 'package:chatbot/Screens/NavBar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:chatbot/Screens/LoginPage.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool showSpinner = false;
  String email = '';
  String password = '';
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // Color(0xFFF2E8FF),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(
            children: [
              //*
              //LOGIN HERE//
              //*
              Container(height: 20),
              Container(
                width: 400,
                height: 50,
                child: Center(
                  child: Text('Create Account',
                      style: GoogleFonts.montserrat(
                        color: Color(0xFF343A48),
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      )),
                ),
              ),
              SizedBox(
                height: 25,
              ),

              //*
              //WELCOME BACK//
              //*
              Text('Look no futher and signUp to support your mental health ',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontSize: 19,
                    fontWeight: FontWeight.w600,
                  )),
              SizedBox(
                height: 70,
              ),

              //*
              //EMAIL TEXFIELD//
              //*
              SizedBox(
                width: 350,
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: "username",
                    hintStyle: GoogleFonts.montserrat(),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Color(0xFF343A48))),
                    prefixIcon: Icon(
                      Icons.person,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 29,
              ),
              SizedBox(
                width: 350,
                child: TextFormField(
                  onChanged: (value) {
                    email = value;
                  },
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: "email",
                    hintStyle: GoogleFonts.montserrat(),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Color(0xFF343A48))),
                    prefixIcon: Icon(
                      Icons.mail,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),

              //*
              //PASSWORD TEXFIELD//
              //*
              SizedBox(
                width: 350,
                child: TextFormField(
                  onChanged: (value) {
                    password = value;
                  },
                  obscureText: true,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: GoogleFonts.montserrat(),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Color(0xFF343A48))),
                    prefixIcon: Icon(
                      Icons.lock,
                    ),
                  ),
                ),
              ),

              //*
              //FORGOT YOUR PASSWORD//
              //*

              SizedBox(height: 30),

              //*
              //LOGIN BUTTON//
              //*
              Container(
                width: 357,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF343A48)),
                    onPressed: () async {
                      setState(() {
                        showSpinner = true;
                      });
                      //Create new Account
                      try {
                        await _auth
                            .createUserWithEmailAndPassword(
                                email: email, password: password)
                            .then((value) {
                          setState(() {
                            showSpinner = false;
                          });
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const NavBar()));
                          print('Successfully Created');
                        });
                      } catch (e) {
                        print(e);
                      }
                    },
                    child: Text(
                      "SignUp",
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.center,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 0, backgroundColor: Colors.white),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ));
                    },
                    child: Text(
                      "Already Have an Account? ",
                      style: GoogleFonts.montserrat(
                        color: Color(0xFF343A48),
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    )),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  "Or continue with ",
                  style: GoogleFonts.montserrat(
                    color: Color(0xFF343A48),
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              SizedBox(
                height: 20,
              ),

              Container(
                width: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 198, 191, 207),
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(Icons.mail, size: 30)),
                    Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 198, 191, 207),
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(Icons.facebook, size: 30)),
                    Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 198, 191, 207),
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(Icons.apple, size: 30))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
