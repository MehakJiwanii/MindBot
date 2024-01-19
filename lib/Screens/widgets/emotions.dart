// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:chatbot/Screens/Emotions/Angry/Angry.dart';
import 'package:chatbot/Screens/Emotions/Calm/Calm.dart';
import 'package:chatbot/Screens/Emotions/Happy/Happy.dart';
import 'package:chatbot/Screens/Emotions/Manic/Manic.dart';
import 'package:chatbot/Screens/Emotions/Sad.dart';

class Emotions extends StatelessWidget {
  const Emotions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //HAPPY
              //
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  child: Column(
                    children: [
                      Container(
                          width: 68,
                          height: 70,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFFFECECE),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  )),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Happy(),
                                    ));
                              },
                              child:
                                  SvgPicture.asset('Assets/Images/Happy.svg'))),
                      SizedBox(
                        height: 11,
                      ),
                      Text(
                        "Happy",
                        style: GoogleFonts.epilogue(
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 94, 93, 93),
                            fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),

//
              //SAD
              //
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Container(
                      width: 68,
                      height: 70,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFDEFEBF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              )),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Sad(),
                                ));
                          },
                          child: SvgPicture.asset(
                            'Assets/Images/Sad.svg',
                            color: Color.fromARGB(255, 193, 247, 140),
                          )),
                    ),
                    SizedBox(
                      height: 11,
                    ),
                    Text(
                      "Sad",
                      style: GoogleFonts.epilogue(
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 94, 93, 93),
                          fontSize: 12),
                    ),
                  ],
                ),
              ),

//
              //ANGRY
              //
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Container(
                      width: 68,
                      height: 70,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFFEDFCE),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              )),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Angry(),
                                ));
                          },
                          child: SvgPicture.asset('Assets/Images/angry.svg')),
                    ),
                    SizedBox(
                      height: 11,
                    ),
                    Text(
                      "Angry",
                      style: GoogleFonts.epilogue(
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 94, 93, 93),
                          fontSize: 12),
                    ),
                  ],
                ),
              ),

//
              //Calm
              //
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Container(
                      width: 68,
                      height: 70,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFF2E8FF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              )),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Calm(),
                                ));
                          },
                          child: SvgPicture.asset(
                              'Assets/Images/Calm - Icon.svg')),
                    ),
                    SizedBox(
                      height: 11,
                    ),
                    Text(
                      "Calm",
                      style: GoogleFonts.epilogue(
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 94, 93, 93),
                          fontSize: 12),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Container(
                      width: 68,
                      height: 70,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFB9DEE6),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              )),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Manic(),
                                ));
                          },
                          child: SvgPicture.asset(
                            'Assets/Images/Manic.svg',
                            color: Color.fromARGB(255, 109, 156, 167),
                          )),
                    ),
                    SizedBox(
                      height: 11,
                    ),
                    Text(
                      "Manic",
                      style: GoogleFonts.epilogue(
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 94, 93, 93),
                          fontSize: 12),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
