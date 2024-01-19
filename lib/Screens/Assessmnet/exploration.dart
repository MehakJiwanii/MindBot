import 'package:chatbot/Screens/ChatScreen.dart';
import 'package:chatbot/Screens/Therapists/Therapists.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FutureBuilder(
            future: Future.delayed(Duration(seconds: 6)),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return Text(
                  '            OR                  ',
                  style: GoogleFonts.montserrat(
                      fontSize: 15,
                      color: const Color.fromARGB(255, 56, 55, 55),
                      fontWeight: FontWeight.w600),
                );
              } else {
                return Text('');
              }
            }),
        SizedBox(height: 35),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FutureBuilder(
              future:
                  Future.delayed(Duration(seconds: 6)), // Delay for 1 second
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ChatScreen(),
                            ));
                      },
                      child: Container(
                        height: 180,
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Animate(
                            effects: [
                              SlideEffect(),
                              ShimmerEffect(duration: Duration(seconds: 2))
                            ],
                            child: Image.asset(
                              'Assets/Images/ChatAI.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ));
                } else {
                  return Text('');
                }
              },
            ),
            SizedBox(height: 35),
            FutureBuilder(
              future:
                  Future.delayed(Duration(seconds: 6)), // Delay for 1 second
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Therapists(),
                            ));
                      },
                      child: Container(
                        height: 180,
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Animate(
                            effects: [
                              SlideEffect(),
                              ShimmerEffect(duration: Duration(seconds: 2))
                            ],
                            child: Image.asset(
                              'Assets/Images/Appointment.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ));
                } else {
                  return Text('');
                }
              },
            ),
          ],
        ),
      ],
    );
  }
}
