import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dates extends StatelessWidget {
  const Dates({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 65,
          height: 90,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Sun',
                  style: GoogleFonts.epilogue(
                      fontSize: 11, fontWeight: FontWeight.w500),
                ),
                Text(
                  '5',
                  style: GoogleFonts.epilogue(
                      fontSize: 20, fontWeight: FontWeight.w500),
                ),
                Text(
                  '2 med',
                  style: GoogleFonts.epilogue(
                      fontSize: 11, fontWeight: FontWeight.w500),
                ),
                Text(
                  '1 Appoint',
                  style: GoogleFonts.epilogue(
                      fontSize: 11, fontWeight: FontWeight.w500),
                ),
              ]),
        ),
        Container(
          width: 65,
          height: 90,
          decoration: ShapeDecoration(
            color: Color.fromARGB(255, 71, 179, 206),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Mon',
                  style: GoogleFonts.epilogue(
                      color: Colors.white,
                      fontSize: 11,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  '6',
                  style: GoogleFonts.epilogue(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  '2 med',
                  style: GoogleFonts.epilogue(
                      color: Colors.white,
                      fontSize: 11,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  '',
                  style: GoogleFonts.epilogue(
                      fontSize: 11, fontWeight: FontWeight.w500),
                ),
              ]),
        ),
        Container(
          width: 65,
          height: 90,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Tue',
                  style: GoogleFonts.epilogue(
                      fontSize: 11, fontWeight: FontWeight.w500),
                ),
                Text(
                  '7',
                  style: GoogleFonts.epilogue(
                      fontSize: 20, fontWeight: FontWeight.w600),
                ),
                Text(
                  '2 med',
                  style: GoogleFonts.epilogue(
                      fontSize: 11, fontWeight: FontWeight.w500),
                ),
                Text(
                  '1 Appoint',
                  style: GoogleFonts.epilogue(
                      fontSize: 11, fontWeight: FontWeight.w500),
                ),
              ]),
        ),
        Container(
          width: 65,
          height: 90,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Wed',
                  style: GoogleFonts.epilogue(
                      fontSize: 11, fontWeight: FontWeight.w600),
                ),
                Text(
                  '8',
                  style: GoogleFonts.epilogue(
                      fontSize: 20, fontWeight: FontWeight.w500),
                ),
                Text(
                  '2 med',
                  style: GoogleFonts.epilogue(
                      fontSize: 11, fontWeight: FontWeight.w500),
                ),
                Text(
                  '1 Appoint',
                  style: GoogleFonts.epilogue(
                      fontSize: 11, fontWeight: FontWeight.w500),
                ),
              ]),
        ),
        Container(
          width: 65,
          height: 90,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Thu',
                  style: GoogleFonts.epilogue(
                      fontSize: 11, fontWeight: FontWeight.w500),
                ),
                Text(
                  '9',
                  style: GoogleFonts.epilogue(
                      fontSize: 20, fontWeight: FontWeight.w500),
                ),
                Text(
                  'music',
                  style: GoogleFonts.epilogue(
                      fontSize: 11, fontWeight: FontWeight.w500),
                ),
                Text(
                  '2 Appoint',
                  style: GoogleFonts.epilogue(
                      fontSize: 11, fontWeight: FontWeight.w500),
                ),
              ]),
        )
      ],
    );
  }
}
