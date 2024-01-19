import 'package:chatbot/Screens/NavBar.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class GuestPage extends StatefulWidget {
  const GuestPage({super.key});

  @override
  State<GuestPage> createState() => _GuestPageState();
}

class _GuestPageState extends State<GuestPage> {
  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          Container(
              height: 350,
              width: 350,
              child: SvgPicture.asset('Assets/Images/GuestPage.svg')),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Welcome\nMate!',
                style: GoogleFonts.epilogue(
                  color: Color(0xFF353A48),
                  fontSize: 50,
                  //fontFamily: 'Epilogue',
                  fontWeight: FontWeight.w600,
                  height: 0,
                  letterSpacing: -0.30,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 300,
            child: TextField(
              controller: myController,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'Choose Your NickName !',
              ),
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 295,
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF343A48)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NavBar(
                            displayName: '',
                            email: '',
                          ),
                        ));
                  },
                  child: Text(
                    "Start Your Journey",
                    style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  )),
            ),
          ),
        ]),
      ),
    );
  }
}
