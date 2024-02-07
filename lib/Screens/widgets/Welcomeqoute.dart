import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcomeqoute extends StatelessWidget {
  const Welcomeqoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 325,
      height: 90,
      decoration: ShapeDecoration(
        
        color: Color(0xFFF8F6F6),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            strokeAlign: BorderSide.strokeAlignCenter,
            color: Color(0xFFF4F4F4),
          ),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Stack(children: [
        SizedBox(
          width: 340,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Center(
                  child: Text(
                      '"It is better to conquer yourself than\nto win a thousand battles"',
                      style: GoogleFonts.epilogue(
                        fontSize: 15,
                        color: Color(0xFF6F6F6F),
                        fontWeight: FontWeight.w400,
                      )),
                ),
                Transform.flip(
                  flipY: true,
                  child: Icon(
                    color: Color.fromARGB(255, 199, 198, 198),
                    Icons.format_quote_sharp,
                    size: 40,
                  ),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
