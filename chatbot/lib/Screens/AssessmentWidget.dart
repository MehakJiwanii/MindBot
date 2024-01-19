import 'package:chatbot/Screens/Assessmnet/Anxiety.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class AssessmentWidget extends StatelessWidget {
  const AssessmentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 70,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFF4F3F1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              )),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Anxiety(),
                ));
          },
          child: Align(
            alignment: Alignment.center,
            child: Container(
              width: 150,
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.article,
                    color: Color.fromARGB(255, 168, 119, 90),
                  ),
                  Center(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Assessment',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.epilogue(
                          color: Color(0xFF573926),
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
