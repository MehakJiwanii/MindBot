import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:chatbot/Screens/widgets/Screentop.dart';
import 'package:chatbot/Screens/widgets/Welcomeqoute.dart';

class Assessment extends StatefulWidget {
  const Assessment({super.key});

  @override
  State<Assessment> createState() => _AssessmentState();
}

class _AssessmentState extends State<Assessment> {
  @override
  Widget build(BuildContext context) {
    //int currentPageIndex = 0;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: ScreenTop(),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                height: 550,
                width: 350,
                decoration: ShapeDecoration(
                  color: Color.fromARGB(255, 225, 245, 250),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      child: Column(children: [
                        SizedBox(
                          height: 20,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: Text(
                              'Hi',
                              style: GoogleFonts.epilogue(
                                  color: Color(0xFF573926),
                                  fontSize: 30,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              'Last Assesment: 08/10/23',
                              style: GoogleFonts.epilogue(
                                  color: Color(0xFF573926),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        )
                      ]),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                        height: 100,
                        width: 330,
                        decoration: ShapeDecoration(
                          color: Color(0xFFF8F6F6),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                'Each Assessments Consists of a Series of questions, which should be answered honestly and in one sitting.',
                                style: GoogleFonts.epilogue(
                                  fontSize: 15,
                                  color: Color(0xFF6F6F6F),
                                  fontWeight: FontWeight.w400,
                                )),
                          ),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 50,
                        width: 100,
                        //color: Color(0xFFF8F6F6),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(255, 106, 176, 204),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              "GOT IT",
                              style: GoogleFonts.epilogue(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ))),
                    SizedBox(
                      height: 150,
                    ),
                    Welcomeqoute()
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
