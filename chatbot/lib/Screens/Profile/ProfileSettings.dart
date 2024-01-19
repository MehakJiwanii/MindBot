import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileSettings extends StatelessWidget {
  const ProfileSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343,
      height: 400,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 60,
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
                  child: Icon(Icons.person_outline)),
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
                            child: Text(
                              'My Account ',
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
                      Positioned(
                        left: 0,
                        top: 23,
                        child: Container(
                          child: Text(
                            'Make changes to your account',
                            style: GoogleFonts.dmSans(
                              color: Color(0xFFABABAB),
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              height: 0.13,
                            ),
                          ),
                        ),
                      )
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
            height: 60,
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
                  child: Icon(Icons.person_outline)),
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
                            child: Text(
                              'Saved Beneficiary ',
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
                      Positioned(
                        left: 0,
                        top: 23,
                        child: Container(
                          child: Text(
                            'Connect emergency contacts',
                            style: GoogleFonts.dmSans(
                              color: Color(0xFFABABAB),
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              height: 0.13,
                            ),
                          ),
                        ),
                      )
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
            height: 60,
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
                  child: Icon(Icons.lock_outline)),
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
                            child: Text(
                              'Face ID / Touch ID',
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
                      Positioned(
                        left: 0,
                        top: 23,
                        child: Container(
                          child: Text(
                            'Manage your device security',
                            style: GoogleFonts.dmSans(
                              color: Color(0xFFABABAB),
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              height: 0.13,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 70,
              ),
              Icon(
                Icons.toggle_off,
                size: 35,
              )
            ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 60,
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
                  child: Icon(Icons.verified_user_outlined)),
              Padding(
                padding: const EdgeInsets.only(left: 9.0),
                child: Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 24.0),
                        child: Container(
                          width: 170,
                          height: 18,
                          child: Positioned(
                            left: 0,
                            top: 0,
                            child: Text(
                              'Two-Factor Authentication',
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
                      Positioned(
                        left: 0,
                        top: 23,
                        child: Container(
                          child: Text(
                            'Further secure your account for safety',
                            style: GoogleFonts.dmSans(
                              color: Color(0xFFABABAB),
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              height: 0.13,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 32,
              ),
              Icon(Icons.arrow_forward_ios)
            ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 60,
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
                  child: Icon(Icons.logout)),
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
                            child: Text(
                              'Logout ',
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
                      Positioned(
                        left: 0,
                        top: 23,
                        child: Container(
                          child: Text(
                            'Further secure your account for safety',
                            style: GoogleFonts.dmSans(
                              color: Color(0xFFABABAB),
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              height: 0.13,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 32,
              ),
              Icon(Icons.arrow_forward_ios)
            ]),
          ),
        ),
      ]),
    );
  }
}
