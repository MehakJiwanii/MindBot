import 'package:chatbot/Screens/ChatScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class TalkToSomeone extends StatelessWidget {
  const TalkToSomeone({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ChatScreen(),
              ));
        },
        child: Container(
            width: 325,
            height: 161,
            decoration: ShapeDecoration(
              color: Color(0xFFFECECE),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            //decoration: BoxDecoration(color: Color(0xFFFFEBEB)),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Talk To Someone',
                      style: GoogleFonts.epilogue(
                        color: Color(0xFF573926),
                        fontSize: 22,
                        //fontFamily: 'Epilogue',
                        fontWeight: FontWeight.w800,
                        height: 0,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Share your thoughts with a\ncertified therapist, friend or\na chat bot',
                          style: GoogleFonts.rubik(
                            color: Color(0xFF573926),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            //height: 0.09
                          ),
                        ),
                      ),
                      Container(
                        height: 80,
                        width: 120,
                        child: SvgPicture.asset(
                          'Assets/Images/TalkToSomeone.svg',
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Know More →',
                      style: GoogleFonts.epilogue(
                        color: Color(0xFF573926),
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        height: 0.12,
                      ),
                    ),
                  ),
                ])),
      ),
    ]);
  }
}
