import 'package:chatbot/Screens/AssessmentWidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:mindbot/Screens/Notifications.dart';
//import 'package:mindbot/Screens/profile.dart';
//import 'package:mindbot/Screens/widgets/NavigationBar.dart';
import 'package:chatbot/Screens/widgets/Recomendation.dart';
import 'package:chatbot/Screens/widgets/Screentop.dart';

//import 'package:mindbot/Screens/widgets/TopBar.dart';

class Happy extends StatefulWidget {
  const Happy({super.key});

  @override
  State<Happy> createState() => _HappyState();
}

class _HappyState extends State<Happy> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: SafeArea(
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
                      child: Text("Happy🥰",
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
                    height: 25,
                  ),
                  Container(
                    child: AssessmentWidget(),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Recommendation(),
                  ),
                ],
              ),
            )));
  }
}
