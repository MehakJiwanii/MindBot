import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:chatbot/Screens/Assesments.dart';
import 'package:chatbot/Screens/Journalling.dart';

class Journal extends StatelessWidget {
  const Journal({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Container(
                width: 155,
                height: 62,
                decoration: ShapeDecoration(
                  color: Color(0xFFF4F3F1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
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
                          builder: (context) => Journalling(),
                        ));
                  },
                  child: Container(
                    width: 155,
                    height: 62,
                    decoration: ShapeDecoration(
                      color: Color(0xFFF4F3F1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.book_rounded,
                              color: Color.fromARGB(255, 179, 148, 130),
                            ),
                            Center(
                              child: Text(
                                'Journal',
                                style: TextStyle(
                                  color: Color(0xFF573926),
                                  fontSize: 14,
                                  fontFamily: 'Epilogue',
                                  fontWeight: FontWeight.w700,
                                  height: 0.16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Container(
                width: 155,
                height: 62,
                decoration: ShapeDecoration(
                  color: Color(0xFFF4F3F1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
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
                          builder: (context) => Assessment(),
                        ));
                  },
                  child: Container(
                    width: 155,
                    height: 62,
                    decoration: ShapeDecoration(
                      color: Color(0xFFF4F3F1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.article,
                              color: Color.fromARGB(255, 179, 148, 130),
                            ),
                            Center(
                              child: Text(
                                'Assessment',
                                style: TextStyle(
                                  color: Color(0xFF573926),
                                  fontSize: 14,
                                  fontFamily: 'Epilogue',
                                  fontWeight: FontWeight.w700,
                                  height: 0.16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            // Container(
            //   width: 155,
            //   height: 62,
            //   decoration: ShapeDecoration(
            //     color: Color(0xFFF4F3F1),
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(16),
            //     ),
            //   ),
            //   child: Stack(
            //     children: [
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //         children: [
            //           Icon(
            //             Icons.article,
            //             color: Color.fromARGB(255, 179, 148, 130),
            //           ),
            //           Center(
            //             child: Text(
            //               'Assesment',
            //               style: TextStyle(
            //                 color: Color(0xFF573926),
            //                 fontSize: 14,
            //                 fontFamily: 'Epilogue',
            //                 fontWeight: FontWeight.w700,
            //                 height: 0.16,
            //               ),
            //             ),
            //           ),
            //         ],
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
        SizedBox(
          height: 30,
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
        ),
      ],
    );
  }
}
