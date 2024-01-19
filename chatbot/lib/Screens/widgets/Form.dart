import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:chatbot/Responsive/Responsive.dart';

class emailPass extends StatelessWidget {
  const emailPass({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: MobileForm(),
      desktop: Column(
        children: [
          SizedBox(
            width: 350,
            child: Expanded(
              child: TextFormField(
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  hintText: "Email",
                  hintStyle: GoogleFonts.montserrat(),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Color(0xFF343A48))),
                  prefixIcon: Icon(
                    Icons.email,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 29,
            ),
          ),
          SizedBox(
            width: 350,
            child: TextFormField(
              obscureText: true,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                hintText: "Password",
                hintStyle: GoogleFonts.montserrat(),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Color(0xFF343A48))),
                prefixIcon: Icon(
                  Icons.lock,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),

          //*
          //PASSWORD TEXFIELD//
          //*
        ],
      ),
    );
  }
}

class MobileForm extends StatelessWidget {
  const MobileForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          SizedBox(
            width: 350,
            //height: 400,
            child: Expanded(
              child: TextFormField(
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  hintText: "Email",
                  hintStyle: GoogleFonts.montserrat(),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Color(0xFF343A48))),
                  prefixIcon: Icon(
                    Icons.email,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 29,
          ),
          SizedBox(
            width: 350,
            child: Expanded(
              child: TextFormField(
                obscureText: true,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  hintText: "Password",
                  hintStyle: GoogleFonts.montserrat(),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Color(0xFF343A48))),
                  prefixIcon: Icon(
                    Icons.lock,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 20,
            ),
          ),

          //*
          //PASSWORD TEXFIELD//
          //*
        ],
      ),
    );
  }
}
