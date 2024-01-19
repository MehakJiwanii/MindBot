import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HelpSupport extends StatelessWidget {
  const HelpSupport({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343,
      height: 150,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 58,
            width: 350,
            //color: Colors.amber,
            child: Row(children: [
              Container(
                  width: 40,
                  height: 40,
                  decoration: ShapeDecoration(
                    color: Color(0xFFF4F3F1),
                    shape: OvalBorder(),
                  ),
                  child: Icon(Icons.notifications_none)),
              Padding(
                padding: const EdgeInsets.only(left: 9.0),
                child: Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 24.0),
                        child: Container(
                          width: 156,
                          height: 18,
                          child: Positioned(
                            left: 0,
                            top: 0,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Help & Support ',
                                style: GoogleFonts.dmSans(
                                  color: Color(0xFF181D27),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  height: 0.12,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 70,
              ),
              Icon(Icons.arrow_forward_ios)
            ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 58,
            width: 350,
            //color: Colors.amber,
            child: Row(children: [
              Container(
                  width: 40,
                  height: 40,
                  decoration: ShapeDecoration(
                    color: Color(0xFFF4F3F1),
                    shape: OvalBorder(),
                  ),
                  child: Icon(Icons.favorite_border)),
              Padding(
                padding: const EdgeInsets.only(left: 9.0),
                child: Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 24.0),
                        child: Container(
                          width: 156,
                          height: 18,
                          child: Positioned(
                            left: 0,
                            top: 0,
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Become a Ecsthetic Rep ',
                                style: GoogleFonts.dmSans(
                                  color: Color(0xFF181D27),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  height: 0.12,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 70,
              ),
              Icon(Icons.arrow_forward_ios)
            ]),
          ),
        ),
      ]),
    );
  }
}
