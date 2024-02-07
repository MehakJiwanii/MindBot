import 'package:chatbot/Screens/AssessmentWidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:chatbot/Screens/widgets/Screentop.dart';

import 'package:chatbot/Screens/Emotions/Sad/sadreco.dart';
import 'package:chatbot/Screens/Emotions/Sad/sadwidget.dart';

class Sad extends StatefulWidget {
  const Sad({super.key});

  @override
  State<Sad> createState() => _SadState();
}

class _SadState extends State<Sad> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Container(child: ScreenTop()),
          SizedBox(
            height: 11,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(" You're Feeling",
                  style: GoogleFonts.epilogue(
                    color: Color(0xFF371B34),
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                    height: 0.05,
                  )),
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text("Sad 🥺",
                  style: GoogleFonts.epilogue(
                    color: Color(0xFF371B34),
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                    //decoration: TextDecoration.underline,
                    height: 0.05,
                  )),
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Container(
            child: AssessmentWidget(),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            child: Sadrecon(),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            child: Sadwidget(),
          ),
        ],
      ),
    )));
  }
}
