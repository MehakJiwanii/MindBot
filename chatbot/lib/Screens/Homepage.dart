import 'package:chatbot/Screens/GuestPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:chatbot/Screens/LoginPage.dart';
import 'package:chatbot/Screens/SignupPage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
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
                          builder: (context) => LoginScreen(),
                        ));
                  },
                  child: Text(
                    "Login",
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpScreen(),
                        ));
                  },
                  child: Text(
                    "Register",
                    style: GoogleFonts.montserrat(
                      color: Color(0xFF353A48),
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  )),
            ),
          ],
        ),
        SizedBox(
          height: 25,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: 0, backgroundColor: Colors.white),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => GuestPage(),
                ));
          },
          child: Text(
            'or continue as a guest',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              color: Color(0xFF353A48),
              fontSize: 16,
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.underline,
              height: 0,
            ),
          ),
        )
      ]),
    );
  }
}
