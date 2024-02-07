import 'package:chatbot/Screens/Therapists/Therapists.dart';
import 'package:chatbot/Screens/widgets/TalkToSomeone.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SadRec extends StatefulWidget {
  const SadRec({super.key});

  @override
  State<SadRec> createState() => _SadRecState();
}

class _SadRecState extends State<SadRec> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width: 325,
            height: 161,
            decoration: ShapeDecoration(
              color: Color(0xFFFECECE),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            //decoration: BoxDecoration(color: Color(0xFFFFEBEB)),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Recommended For You',
                      style: GoogleFonts.epilogue(
                        color: Color(0xFF573926),
                        fontSize: 22,
                        //fontFamily: 'Epilogue',
                        fontWeight: FontWeight.w800,
                        height: 0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'How to be happy without fearing what is to come next, near-sight anxiety.',
                      style: GoogleFonts.rubik(
                        color: Color(0xFF573926),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        //height: 0.09
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Therapists(),
                            ));
                      },
                      child: Text(
                        'Book Your Slot Now 📆',
                        style: GoogleFonts.epilogue(
                          color: Color(0xFFCD7C7C),
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          height: 0.12,
                        ),
                      ),
                    ),
                  ),
                ])),
        SizedBox(
          height: 20,
        ),
        Container(
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: Text(
                        '“Happiness is not the absence of\nproblems,its the ability to deal\nwith them"',
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
          ]),
        ),
        Container(
          child: TalkToSomeone(),
        ),
      ],
    );
  }
}
