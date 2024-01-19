import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300,
        height: 40,
        child: Center(
            child: TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),
            hintText: 'Search a series...',
            hintStyle: GoogleFonts.poppins(
              color: Colors.black.withOpacity(0.6600000262260437),
              fontSize: 14,
              fontWeight: FontWeight.w400,
              height: 0.11,
              letterSpacing: 1,
            ),
            border: OutlineInputBorder(
              borderSide: new BorderSide(color: Colors.black),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
        )));
  }
}
