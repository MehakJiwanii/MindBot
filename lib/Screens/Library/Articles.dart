import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Articles extends StatelessWidget {
  const Articles({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Container(
            width: 301.25,
            height: 103.29,
            decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 4,
                    offset: Offset(2, 4),
                    spreadRadius: 2,
                  )
                ]),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () async {
                  final Uri url = Uri.parse(
                      'https://www.helpguide.org/articles/grief/coping-with-grief-and-loss.htm');
                  if (!await launchUrl(url)) {
                    throw Exception('Could not launch $url');
                  }
                },
                child: Container(
                    child: Row(children: [
                  SvgPicture.asset('Assets/Images/1.svg'),
                  SizedBox(
                    width: 2,
                  ),
                  Container(
                    width: 180,
                    height: 90.89,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            'Priory Healthcare’s guide to',
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Text(
                          'Coping with loss and grief',
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text('Self-care',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                              )),
                        ),
                      ],
                    ),
                  ),
                ]))),
          ),

          SizedBox(
            height: 40,
          ),

          ////
          //CONTAINER #2
          ///////
          ///
          ///
          Container(
            width: 301.25,
            height: 103.29,
            decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 4,
                    offset: Offset(2, 4),
                    spreadRadius: 2,
                  )
                ]),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () async {
                  final Uri url = Uri.parse(
                      'https://www.helpguide.org/articles/healthy-living/finding-joy-during-difficult-times.htm');
                  if (!await launchUrl(url)) {
                    throw Exception('Could not launch $url');
                  }
                },
                child: Container(
                    child: Row(children: [
                  SvgPicture.asset(
                    'Assets/Images/2.svg',
                    height: 60,
                    width: 25,
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Container(
                    width: 180,
                    height: 90.89,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            'Priory Healthcare’s guide to',
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Text(
                          'Finding Joy in Difficult Times',
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text('Self-care',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                              )),
                        ),
                      ],
                    ),
                  ),
                ]))),
          ),
          SizedBox(
            height: 40,
          ),

          ////
          ///
          ///
          ///

          /////
          ///
          ///CONTAINER 3
          ///
          ////
          Container(
            width: 301.25,
            height: 103.29,
            decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 4,
                    offset: Offset(2, 4),
                    spreadRadius: 2,
                  )
                ]),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () async {
                  final Uri url = Uri.parse(
                      'https://www.helpguide.org/articles/stress/surviving-tough-times.htm');
                  if (!await launchUrl(url)) {
                    throw Exception('Could not launch $url');
                  }
                },
                child: Container(
                    child: Row(children: [
                  SvgPicture.asset(
                    'Assets/Images/ressilance.svg',
                    height: 58,
                    width: 50,
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Container(
                    width: 180,
                    height: 90.89,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            'Priory Healthcare’s guide to',
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Text(
                          'Surviving Tough Times by Building Resilience',
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text('Self-care',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                              )),
                        ),
                      ],
                    ),
                  ),
                ]))),
          ),

          SizedBox(
            height: 40,
          ),

          /////
          ///
          ///CONTAINER 3
          ///

          Container(
            width: 301.25,
            height: 103.29,
            decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 4,
                    offset: Offset(2, 4),
                    spreadRadius: 2,
                  )
                ]),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () async {
                  final Uri url = Uri.parse(
                      'https://www.helpguide.org/articles/ptsd-trauma/helping-someone-with-ptsd.htm');
                  if (!await launchUrl(url)) {
                    throw Exception('Could not launch $url');
                  }
                },
                child: Container(
                    child: Row(children: [
                  SvgPicture.asset('Assets/Images/4.svg'),
                  SizedBox(
                    width: 2,
                  ),
                  Container(
                    width: 180,
                    height: 90.89,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            'Priory Healthcare’s guide to',
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Text(
                          'Coping with PTSD and Trauma',
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text('Self-care',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                              )),
                        ),
                      ],
                    ),
                  ),
                ]))),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            width: 301.25,
            height: 103.29,
            decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 4,
                    offset: Offset(2, 4),
                    spreadRadius: 2,
                  )
                ]),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () async {
                  final Uri url = Uri.parse(
                      'https://www.helpguide.org/articles/mental-disorders/narcissistic-personality-disorder.htm');
                  if (!await launchUrl(url)) {
                    throw Exception('Could not launch $url');
                  }
                },
                child: Container(
                    child: Row(children: [
                  SvgPicture.asset(
                    'Assets/Images/narcasisst.svg',
                    height: 72,
                    width: 58,
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Container(
                    width: 180,
                    height: 90.89,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            'Priory Healthcare’s guide to',
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Text(
                          'Tips to spot narcissism traits',
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text('Self-care',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                              )),
                        ),
                      ],
                    ),
                  ),
                ]))),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            width: 301.25,
            height: 103.29,
            decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 4,
                    offset: Offset(2, 4),
                    spreadRadius: 2,
                  )
                ]),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () async {
                  final Uri url = Uri.parse(
                      'https://www.helpguide.org/articles/eating-disorders/anorexia-nervosa.htm');
                  if (!await launchUrl(url)) {
                    throw Exception('Could not launch $url');
                  }
                },
                child: Container(
                    child: Row(children: [
                  SvgPicture.asset(
                    'Assets/Images/anorexiaNervosa.svg',
                    height: 65,
                    width: 55,
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Container(
                    width: 180,
                    height: 90.89,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            'Priory Healthcare’s guide to',
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Anorexia Nervosa ',
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text('Self-care',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                              )),
                        ),
                      ],
                    ),
                  ),
                ]))),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            width: 301.25,
            height: 103.29,
            decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 4,
                    offset: Offset(2, 4),
                    spreadRadius: 2,
                  )
                ]),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () async {
                  final Uri url = Uri.parse(
                      'https://www.helpguide.org/articles/therapy-medication/online-therapy-is-it-right-for-you.htm');
                  if (!await launchUrl(url)) {
                    throw Exception('Could not launch $url');
                  }
                },
                child: Container(
                    child: Row(children: [
                  SvgPicture.asset(
                    'Assets/Images/therepy.svg',
                    height: 70,
                    width: 55,
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Container(
                    width: 180,
                    height: 90.89,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            'Priory Healthcare’s guide to',
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Text(
                          'Is Online Therapy right for you?',
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text('Self-care',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                              )),
                        ),
                      ],
                    ),
                  ),
                ]))),
          )
        ],
      ),
    );
  }
}
