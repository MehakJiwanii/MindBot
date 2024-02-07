import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:chatbot/Screens/Assessmnet/Anxiety.dart';
import 'package:chatbot/Screens/Assessmnet/exploration.dart';
import 'package:chatbot/Screens/NavBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Bipolarbot extends StatefulWidget {
  const Bipolarbot({Key? key});

  @override
  State<Bipolarbot> createState() => _BipolarbotState();
}

class _BipolarbotState extends State<Bipolarbot> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

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
                      ),
                    );
                  },
                  onDoubleTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NavBar(
                          displayName: '',
                          email: '',
                        ),
                      ),
                    );
                  },
                  child: Icon(
                    Icons.arrow_back,
                    size: screenWidth * 0.07,
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              Row(
                children: [
                  Image.asset(
                    'Assets/Images/bot.png',
                    height: screenHeight * 0.07,
                    width: screenHeight * 0.07,
                  ),
                  SizedBox(
                    width: screenWidth * 0.02,
                  ),
                  Animate(
                    effects: [],
                    child: Container(
                      height: screenHeight * 0.07,
                      decoration: ShapeDecoration(
                        color: Color(0xFF343A48),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
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
                                fontSize: screenWidth * 0.04,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenHeight * 0.015,
              ),
              Row(
                children: [
                  Image.asset(
                    'Assets/Images/bot.png',
                    height: screenHeight * 0.07,
                    width: screenHeight * 0.07,
                  ),
                  SizedBox(
                    width: screenWidth * 0.02,
                  ),
                  Container(
                    height: screenHeight * 0.09,
                    decoration: ShapeDecoration(
                      color: Color(0xFF343A48),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    child: FutureBuilder(
                      future: Future.delayed(
                        Duration(seconds: 2),
                      ), // Delay for 1 second
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.done) {
                          return FittedBox(
                            fit: BoxFit.scaleDown,
                            child: AnimatedTextKit(
                              totalRepeatCount: 1,
                              animatedTexts: [
                                TypewriterAnimatedText(
                                  'Here is something that can help you\ncope up with Bipolarity',
                                  textStyle: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontSize: screenWidth * 0.04,
                                  ),
                                ),
                              ],
                            ),
                          );
                        } else {
                          return Text('');
                        }
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.04),
              FutureBuilder(
                future: Future.delayed(
                  Duration(seconds: 6),
                ), // Delay for 1 second
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return GestureDetector(
                      onTap: () async {
                        final Uri url = Uri.parse(
                          'https://www.helpguide.org/articles/bipolar-disorder/living-with-bipolar-disorder.htm',
                        );
                        if (!await launchUrl(url)) {
                          throw Exception('Could not launch $url');
                        }
                      },
                      child: Container(
                        height: screenHeight * 0.25,
                        width: screenWidth * 0.8,
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
                              ShimmerEffect(
                                duration: Duration(seconds: 2),
                              ),
                            ],
                            child: Image.asset(
                              'Assets/Images/Bipolarbot.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    );
                  } else {
                    return Text('');
                  }
                },
              ),
              SizedBox(height: screenHeight * 0.035),
              SizedBox(
                child: Explore(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
