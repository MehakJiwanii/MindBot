import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:chatbot/Screens/Therapists/Therapists.dart';

class Today extends StatelessWidget {
  const Today({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 325,
      height: 130,
      decoration: ShapeDecoration(
        color: Color.fromARGB(255, 225, 245, 250),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        //child: SingleChildScrollView(
        //scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            //Container(
            //width: 300,
            //height: 200,
            //child:
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      ' To-day',
                      style: GoogleFonts.epilogue(
                        color: Color(0xFF573926),
                        fontSize: 22,
                        fontWeight: FontWeight.w800,
                        height: 0,
                      ),
                    ),
                  ),
                  const SizedBox(height: 7),
                  SizedBox(
                    //width: 300,
                    child: Opacity(
                      opacity: 0.90,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Text(
                          'To Book therapy sessions for Trauma,Depression & mental Wellness.',
                          style: GoogleFonts.epilogue(
                            color: Color(0xFF573926),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            //height: 0.09,
                          ),
                        ),
                      ),
                    ),
                  ),
                  //const SizedBox(height: 10),
                  Stack(
                    children: [
                      Container(
                        //height: 30,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: Color.fromARGB(255, 225, 245, 250),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Therapists(),
                                ));
                          },
                          child: Text(
                            'Contact Therepists',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.epilogue(
                              color: Color(0xFFA534FE),
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              height: 0.12,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //)
          ],
        ),
        // ),
      ),
    );
  }
}
