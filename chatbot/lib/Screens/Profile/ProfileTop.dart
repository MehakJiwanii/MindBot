import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileTop extends StatelessWidget {
  const ProfileTop({super.key});

  @override
  Widget build(BuildContext context) {
    final myController = TextEditingController();

    return Container(
      width: 343,
      height: 89,
      decoration: ShapeDecoration(
          color: Color(0xFFA686FF),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          shadows: [
            BoxShadow(
              color: Color(0x0F000000),
              blurRadius: 44,
              offset: Offset(0, 4),
              spreadRadius: 0,
            )
          ]),
      child: Row(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 60,
            width: 60,
            child: Image.asset(
              'Assets/Images/Profile.png',
            ),
          ),
        ),
        Container(
          child: Text(
            myController.text,
            style: GoogleFonts.montserrat(color: Colors.white),
          ),
        ),
        SizedBox(
          width: 120,
        ),
        Icon(
          Icons.edit,
          color: Colors.white,
          size: 35,
        )
      ]),
    );
  }
}
