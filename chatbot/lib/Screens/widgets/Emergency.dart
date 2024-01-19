import 'package:chatbot/Screens/NavBar.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmergencyButton extends StatefulWidget {
  const EmergencyButton({super.key});

  @override
  State<EmergencyButton> createState() => _EmergencyButtonState();
}

class _EmergencyButtonState extends State<EmergencyButton> {
  @override
  Widget build(BuildContext context) {
    // int currentPageIndex = 0;
    return Scaffold(
      // bottomNavigationBar: NavigationBar(
      //   backgroundColor: Colors.white,
      //   onDestinationSelected: (int index) {
      //     setState(() {
      //       currentPageIndex = index;
      //     });
      //   },
      //   indicatorColor: const Color.fromARGB(255, 168, 201, 238),
      //   selectedIndex: currentPageIndex,
      //   destinations: const <Widget>[
      //     NavigationDestination(
      //       selectedIcon: Icon(
      //         Icons.house_rounded,
      //         color: Color.fromARGB(255, 85, 84, 83),
      //         size: 35,
      //       ),
      //       icon: Icon(
      //         Icons.house_rounded,
      //         color: Color.fromARGB(255, 85, 84, 83),
      //         size: 35,
      //       ),
      //       label: '',
      //     ),
      //     NavigationDestination(
      //       selectedIcon: Icon(
      //         Icons.video_camera_back,
      //         color: Color.fromARGB(255, 85, 84, 83),
      //         size: 35,
      //       ),
      //       icon: Icon(
      //         Icons.video_camera_back,
      //         color: Color.fromARGB(255, 85, 84, 83),
      //         size: 35,
      //       ),
      //       label: '',
      //     ),
      //     NavigationDestination(
      //       icon: Icon(
      //         Icons.chat_bubble_outline,
      //         color: Color.fromARGB(255, 85, 84, 83),
      //         size: 35,
      //       ),
      //       label: '',
      //     ),
      //     NavigationDestination(
      //       selectedIcon: Icon(
      //         Icons.group,
      //         color: Color.fromARGB(255, 85, 84, 83),
      //         size: 35,
      //       ),
      //       icon: Icon(
      //         Icons.group,
      //         color: Color.fromARGB(255, 85, 84, 83),
      //         size: 35,
      //       ),
      //       label: '',
      //     ),
      //   ],
      // ),
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  width: 40,
                  height: 50,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9.18),
                    ),
                  ),
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NavBar(),
                            ));
                      },
                      icon: Icon(Icons.arrow_back_ios))
                  //Icon(Icons.arrow_back_ios),
                  ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              width: 312,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Emergency',
                  style: GoogleFonts.epilogue(
                    color: Color(0xFF353A48),
                    fontSize: 44.28,
                    fontWeight: FontWeight.w500,
                    height: 0.03,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Container(
            width: 350,
            height: 120,
            decoration: ShapeDecoration(
              color: Color.fromARGB(255, 189, 218, 245),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 11,
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Breathing routine',
                            style: GoogleFonts.epilogue(
                              color: Color(0xFF573926),
                              fontSize: 22,
                              fontWeight: FontWeight.w800,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Container(
                        //width: 202,
                        height: 20,
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Talk Lets get started ->',
                              style: TextStyle(
                                color: Color(0xFF5DA9E9),
                                fontSize: 20,
                                fontFamily: 'Epilogue',
                                fontWeight: FontWeight.w700,
                                height: 0.12,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 11,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          SizedBox(
            height: 40,
          ),
          //LOOK AROUND

          //** */
          Container(
            width: 350,
            height: 160.25,
            decoration: ShapeDecoration(
              color: Color.fromARGB(255, 189, 218, 245),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Column(children: [
              SizedBox(
                height: 11,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Look around',
                    style: GoogleFonts.epilogue(
                      color: Color(0xFF573926),
                      fontSize: 22,
                      fontWeight: FontWeight.w800,
                      height: 0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 11,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Name 5 things you see, 4 you hear, 3 you smell, 2 you feel and 1 you taste.',
                  style: GoogleFonts.epilogue(
                    color: Color(0xFF573926),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 11,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Talk to your therapist',
                    style: GoogleFonts.epilogue(
                      color: Color(0xFF5DA9E9),
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 11,
              ),
            ]),
          ),
          SizedBox(
            height: 30,
          ),

          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
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
                  onPressed: () {},
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
                              Icons.call,
                              color: Color.fromARGB(255, 179, 148, 130),
                            ),
                            Center(
                              child: Text(
                                'Call *****',
                                style: GoogleFonts.epilogue(
                                  color: Color(0xFF573926),
                                  fontSize: 14,
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
                  onPressed: () {},
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
                              Icons.chat_bubble,
                              color: Color.fromARGB(255, 179, 148, 130),
                            ),
                            Center(
                              child: Text(
                                'Talk To AI',
                                style: GoogleFonts.epilogue(
                                  color: Color(0xFF573926),
                                  fontSize: 14,
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
          ]),

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
      )),
    );
  }
}
