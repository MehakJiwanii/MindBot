import 'package:chatbot/Screens/NavBar.dart';
import 'package:chatbot/Screens/SignupPage.dart';
import 'package:chatbot/Screens/widgets/or.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  var email = "";
  var password = "";
  bool passToggle = true;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  userLogin() async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password)
          .then((value) {
        Fluttertoast.showToast(
          msg: "Login successfully",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.green,
          textColor: Colors.white,
        );
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => NavBar(
                    displayName: '',
                    email: '',
                  )),
        );
      });
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.green,
          content: Text(
            e.code,
            style: const TextStyle(fontSize: 18.0),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40)),
          child: BottomAppBar(
            child: Container(
                decoration: BoxDecoration(
                    color: Color(0xFF343A48),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                height: 65,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have any account ? ",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15)),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignUPScreen(),
                            ));
                      },
                      child: const Text("Sign up",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15)),
                    )
                  ],
                )),
          ),
        ),
        backgroundColor: Colors.white,
        body: Form(
          key: _formKey,
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          controller: emailController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter email address";
                            } else if (!value.contains("@")) {
                              return "Please Enter Valid Email";
                            } else if (!value.contains(".com")) {
                              return "Please Enter Valid Email";
                            }
                            return null;
                          },
                          textInputAction: TextInputAction.done,
                          decoration: InputDecoration(
                            hintText: "Email",
                            hintStyle: GoogleFonts.montserrat(),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide:
                                    BorderSide(color: Color(0xFF343A48))),
                            prefixIcon: Icon(
                              Icons.email,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          controller: passwordController,
                          obscureText: passToggle,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter Password";
                            } else if (value.length < 6) {
                              return "Please enter at least 6 digit";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              hintText: " Password",
                              hintStyle: GoogleFonts.montserrat(),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide:
                                      BorderSide(color: Color(0xFF343A48))),
                              prefixIcon: Icon(
                                Icons.lock,
                              ),
                              suffixIcon: InkWell(
                                onTap: () {
                                  setState(() {
                                    passToggle = !passToggle;
                                  });
                                },
                                child: Icon(
                                  passToggle
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: Theme.of(context).brightness ==
                                          Brightness.light
                                      ? Colors.blue
                                      : Colors.white,
                                ),
                              )),
                        ),
                        const SizedBox(
                          height: 30,
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
                              onPressed: () async {
                                if (_formKey.currentState!.validate()) {
                                  var pref =
                                      await SharedPreferences.getInstance();
                                  pref.setBool("Login", true);

                                  setState(() {
                                    email = emailController.text;
                                    password = passwordController.text;
                                  });

                                  userLogin();
                                } else {
                                  Fluttertoast.showToast(
                                      msg: "Please fill all detail",
                                      backgroundColor: Colors.redAccent);
                                }
                              },
                              child: Text(
                                'Login',
                                style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500),
                              )),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        // Container(
                        //   child: or(),
                        // )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
