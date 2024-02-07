import 'package:chatbot/Screens/ChatScreen.dart';
import 'package:chatbot/Screens/Homepage.dart';
import 'package:chatbot/Screens/LoginPage.dart';
import 'package:chatbot/Screens/SignupPage.dart';
import 'package:chatbot/Screens/Chatbot.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectBot extends StatefulWidget {
  const SelectBot({super.key});

  @override
  State<SelectBot> createState() => _SelectBotState();
}

class _SelectBotState extends State<SelectBot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(children: [
          Stack(
            children: [SvgPicture.asset('Assets/Images/Homepage.svg')],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 160,
                height: 60,
                decoration: ShapeDecoration(
                  color: Color(0xFF353A48),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 8,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF353A48)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                    child: Text(
                      "BOT1",
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    )),
              ),
              Container(
                width: 160,
                height: 60,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 8,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.white),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SelectBot()));
                    },
                    child: Text(
                      "BOT2",
                      style: GoogleFonts.montserrat(
                        color: Color(0xFF353A48),
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    )),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
