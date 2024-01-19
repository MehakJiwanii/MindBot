import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:chatbot/Screens/Assessmnet/Anxiety.dart';

import 'package:chatbot/Screens/Assessmnet/exploration.dart';
import 'package:chatbot/Screens/NavBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Depressionbot extends StatefulWidget {
  const Depressionbot({super.key});

  @override
  State<Depressionbot> createState() => _DepressionbotState();
}

class _DepressionbotState extends State<Depressionbot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Anxiety(),
                          ));
                    },
                    onDoubleTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NavBar(
                              displayName: '',
                              email: '',
                            ),
                          ));
                    },
                    child: Icon(
                      Icons.arrow_back,
                      size: 32,
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Image.asset(
                    'Assets/Images/bot.png',
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Animate(
                    effects: [],
                    child: Container(
                      height: 50,
                      decoration: ShapeDecoration(
                          color: Color(0xFF343A48),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(10)))),
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: AnimatedTextKit(
                          totalRepeatCount: 1,

                          animatedTexts: [
                            TypewriterAnimatedText(
                                ' I am so Sorry to hear that!!',
                                curve: Curves.bounceInOut,
                                textStyle: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 18,
                                )),
                          ],
                          // child: ChatBubble(

                          //   message: "hello", isMe: false),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Image.asset(
                    'Assets/Images/bot.png',
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                      height: 60,
                      decoration: ShapeDecoration(
                        color: Color(0xFF343A48),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                      child: FutureBuilder(
                          future: Future.delayed(
                              Duration(seconds: 2)), // Delay for 1 second
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.done) {
                              return FittedBox(
                                fit: BoxFit.scaleDown,
                                child: AnimatedTextKit(
                                    totalRepeatCount: 1,
                                    animatedTexts: [
                                      TypewriterAnimatedText(
                                        'Here is something that can help you\ncope up with Depression',
                                        textStyle: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ]),
                              );
                            } else {
                              return Text('');
                            }
                          }))
                ],
              ),
              SizedBox(height: 40),
              FutureBuilder(
                future:
                Future.delayed(Duration(seconds: 6)), // Delay for 1 second
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return GestureDetector(
                        onTap: () async {
                          final Uri url = Uri.parse(
                              'https://www.helpguide.org/articles/depression/depression-symptoms-and-warning-signs.htm');
                          if (!await launchUrl(url)) {
                            throw Exception('Could not launch $url');
                          }
                        },
                        child: Container(
                          height: 200,
                          width: 350,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
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
                                'Assets/Images/Depressionbot.png',
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
              SizedBox(
                child: Explore(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
