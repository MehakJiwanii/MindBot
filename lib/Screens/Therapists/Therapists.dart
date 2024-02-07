import 'package:chatbot/Screens/Therapists/EhsanZafar.dart';
import 'package:chatbot/Screens/Therapists/MaryamHanif.dart';
import 'package:chatbot/Screens/Therapists/RabiaTanveer.dart';
import 'package:chatbot/Screens/Therapists/UzmaZahoor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Therapists extends StatefulWidget {
  const Therapists({super.key});

  @override
  State<Therapists> createState() => _TherapistsState();
}

class _TherapistsState extends State<Therapists> {
  @override
  Widget build(BuildContext context) {
    //int currentPageIndex = 0;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                  //child: ScreenTop(),
                  ),
              Container(
                width: 342,
                height: 38,
                child: Center(
                  child: Text(
                    'Therapists',
                    style: GoogleFonts.raleway(
                      color: Colors.black,
                      fontSize: 36,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Container(
                width: 240,
                height: 19,
                child: Text(
                  'Your Mental Health care Experts',
                  style: GoogleFonts.workSans(
                    color: Color(0xFFA1A1A1),
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                child: MaryamHanif(),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                child: RabiaTanveer(),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                child: UzmaZahoor(),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                child: EhsanZafar(),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 342,
                height: 154,
                decoration: ShapeDecoration(
                  color: Color(0xFFCDE7FF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            'Dr. Ahmad S.',
                            style: GoogleFonts.workSans(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                          Text(
                            'Anxiety, OCD\nMon - Wed\nOnline Sessions\n DHA Phase V',
                            style: GoogleFonts.workSans(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            height: 110,
                            width: 130,
                            child:
                                SvgPicture.asset('Assets/Images/AhmedS.svg')),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 25,
                          width: 100,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15))),
                              onPressed: () {},
                              child: Text(
                                'Contact',
                                style:
                                    GoogleFonts.montserrat(color: Colors.white),
                              )),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                child: MaryamHanif(),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                child: RabiaTanveer(),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                child: UzmaZahoor(),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                child: EhsanZafar(),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
