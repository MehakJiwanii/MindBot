import 'package:chatbot/Screens/AssessmentWidget.dart';
import 'package:chatbot/Screens/Notifications.dart';
import 'package:chatbot/Screens/Profile/profile.dart';
import 'package:chatbot/Screens/widgets/Emergency.dart';
import 'package:chatbot/Screens/widgets/To-day.dart';
import 'package:chatbot/Screens/widgets/Welcomeqoute.dart';
import 'package:chatbot/Screens/widgets/emotions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  // int currentPageIndex = 0;
  // final screens = [
  //   Welcome(),
  //   Therapists(),
  //   Chatbot(),
  //   Profile(),
  // ];
  String greetings() {
    final hour = TimeOfDay.now().hour;

    if (hour <= 12) {
      return 'Good Morning';
    } else if (hour <= 17) {
      return 'Good Afternoon';
    }
    return 'Good Evening';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      body: SafeArea(
        child: Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  //** */
                  //PROFILE AND BELL ICON//
                  //** */
                  child: Row(
                    children: [
                      //Container(child: ,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            height: 70,
                            width: 70,
                            child: IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Profile()));
                                },
                                icon: Image.asset(
                                  'Assets/Images/Profile.png',
                                ))),
                      ),
                      Container(
                        width: 240,
                      ),
                      Container(
                          child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Notifications(),
                              ));
                        },
                        icon: Icon(Icons.notifications_outlined),
                        iconSize: 45,
                      )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                //** */
                //GREETINGS
                //** */
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(greetings(),
                        style: GoogleFonts.epilogue(
                          color: Color(0xFF371B34),
                          fontSize: 26,
                          fontWeight: FontWeight.w500,
                          height: 0.05,
                        )),
                  ),
                ),
                SizedBox(height: 45),
                //** */
                //HOW ARE YOU FEELING TODAY?
                //** */
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text('How are you feeling today?',
                        style: GoogleFonts.epilogue(
                          color: Color(0xFF371B34),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          height: 0,
                        )),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  child: Emotions(),
                ),
                SizedBox(
                  height: 22,
                ),
                //JOURNAL
                //ASSESMENT
                Container(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [AssessmentWidget()],
                )),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: Welcomeqoute(),
                ),
                SizedBox(
                  height: 30,
                ),

                //
                //TODAY
                Container(
                  width: 325,
                  height: 150,
                  child: Stack(children: [
                    Today(),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: FloatingActionButton(
                        backgroundColor: Color(0xFFFECECE),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EmergencyButton(),
                              ));
                        },
                        child: Text(
                          '❗️',
                          style: GoogleFonts.epilogue(
                            color: Color(0xFFFFCFCF),
                            fontSize: 31.49,
                            //fontFamily: 'Quicksand',

                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
      //extendBody: screens[currentPageIndex],
    );
  }
}
