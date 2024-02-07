import 'package:chatbot/Screens/Library/Articles.dart';
import 'package:chatbot/Screens/Library/Searchbox.dart';
import 'package:chatbot/Screens/NavBar.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Library extends StatefulWidget {
  const Library({super.key});

  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
      // Navigate to the NavbarScreen when the back button is pressed
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => NavBar(
              displayName: '',
              email: '',
            )),
      );
      return false; // Prevents default behavior (popping the route)
    },
      child: Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          SizedBox(
            height: 40,
          ),
          Text(
            'Self-Care Resources',
            style: GoogleFonts.montserrat(
                fontSize: 20, fontWeight: FontWeight.w700),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              child: Articles(),
            ),
          ),
          Container(
            child: Articles(),
          )
        ]),
      )),
    )
    );
  }
}
