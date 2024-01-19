import 'package:chatbot/Screens/ForgotPassword.dart';
import 'package:chatbot/Screens/NavBar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:chatbot/Screens/SignupPage.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool showSpinner = false;
  String email = '';
  String password = '';
  final _auth = FirebaseAuth.instance;

  //padding: const EdgeInsets.symmetric(horizontal: 24.0),
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                  child: Text('Login here',
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
              Text('Welcome back you’ve\nbeen missed!',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontSize: 20,
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
                    hintText: " Password",
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

              Align(
                alignment: Alignment.bottomRight,
                child: GestureDetector(
                  child: Text("Forgot Your Password?",
                      style: GoogleFonts.montserrat(
                        color: Color(0xFF343A48),
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      )),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ForgotPassword(),
                        ));
                  },
                ),
              ),

              SizedBox(height: 20),

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
                      //Login to existing account
                      try {
                        await _auth
                            .signInWithEmailAndPassword(
                                email: email, password: password)
                            .then((value) {
                          setState(() {
                            showSpinner = false;
                          });
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const NavBar()));
                        });
                        print('Successfully Login');
                      } catch (e) {
                        print(e);
                      }
                    },
                    child: Text(
                      "Login",
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
                      elevation: 0,
                      backgroundColor: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpScreen(),
                          ));
                    },
                    child: Text(
                      "Create new Account ",
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
                      width: 50,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(255, 198, 191, 207)),
                          onPressed: () {
                            LoginWithGoogle();
                          },
                          child: Container(
                            alignment: Alignment.center,
                            child: Icon(
                              Icons.g_mobiledata_sharp,
                              color: Colors.black,
                              size: 40,
                            ),
                          )),
                    ),
                    Container(
                      height: 40,
                      width: 50,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(255, 198, 191, 207)),
                          onPressed: () {},
                          child: Icon(
                            Icons.facebook,
                            color: Colors.black,
                            size: 30,
                          )),
                    ),
                    Container(
                      height: 40,
                      width: 50,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(255, 198, 191, 207)),
                          onPressed: () {},
                          child: Icon(
                            Icons.phone,
                            color: Colors.black,
                            size: 30,
                          )),
                    )
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

LoginWithGoogle() async {
  GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
  GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
  AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken, idToken: googleAuth?.idToken);
  UserCredential userCredential =
      await FirebaseAuth.instance.signInWithCredential(credential);
  print(userCredential.user?.displayName);
}
