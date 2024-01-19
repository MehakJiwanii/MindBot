import 'package:chatbot/Screens/LoginPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:lottie/lottie.dart';

import 'package:shared_preferences/shared_preferences.dart';

class SignUPScreen extends StatefulWidget {
  const SignUPScreen({Key? key}) : super(key: key);

  @override
  State<SignUPScreen> createState() => _SignUPScreenState();
}

class _SignUPScreenState extends State<SignUPScreen> {
  final _formKey = GlobalKey<FormState>();
  bool passToggle = true;
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Future<void> registration() async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: emailController.text, password: passwordController.text)
          .then((_) {
        Fluttertoast.showToast(
          msg: "Registration successfully,Please Login",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.green,
          textColor: Colors.white,
        );
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const LoginScreen(),
            ));
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
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).brightness == Brightness.light
            ? Colors.yellow.shade50
            : Colors.black,
        // image: const DecorationImage(
        //   fit: BoxFit.fill,
        //   image: AssetImage('Assets/Profile.png'),
        // ),
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
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
                    const Text("Already have an account ? ",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15)),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
                            ));
                      },
                      child: const Text("Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15)),
                    )
                  ],
                )),
          ),
        ),
        body: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
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
                  Text(
                      'Look no futher and signUp to support your mental health ',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontSize: 19,
                        fontWeight: FontWeight.w600,
                      )),
                  SizedBox(
                    height: 70,
                  ),

                  TextFormField(
                    controller: nameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter your name";
                      }
                      return null;
                    },
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
                  SizedBox(height: 30),

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
                  SizedBox(height: 30),
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
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Color(0xFF343A48))),
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
                            color:
                                Theme.of(context).brightness == Brightness.light
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
                        backgroundColor: Color(0xFF343A48),
                      ),
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          var prefs = await SharedPreferences.getInstance();
                          prefs.setString('myName',
                              nameController.text.capitalizeFirst.toString());
                          registration();
                        } else {
                          Fluttertoast.showToast(
                              msg: "Please fill all detail",
                              backgroundColor: Colors.redAccent);
                        }
                        // var name = nameController.text.toString();
                      },
                      child: Text(
                        'Sign up',
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
