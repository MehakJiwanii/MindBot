import 'package:chatbot/Screens/AssessmentWidget.dart';
import 'package:chatbot/Screens/widgets/Emergency.dart';
import 'package:chatbot/Screens/widgets/To-day.dart';
import 'package:chatbot/Screens/widgets/Welcomeqoute.dart';
import 'package:chatbot/Screens/widgets/emotions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  var nameValue = "";
  final nameController = TextEditingController();

  String greetings() {
    final hour = TimeOfDay.now().hour;

    if (hour <= 12) {
      return 'Good Morning';
    } else if (hour <= 17) {
      return 'Good Afternoon';
    }
    return 'Good Evening';
  }

  void getValue() async {
    var prefs = await SharedPreferences.getInstance();
    var getName = prefs.getString('myName');
    setState(() {
      nameValue = getName ?? "";
    });
  }

  @override
  void initState() {
    getValue();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Animate(
                effects: [SlideEffect(duration: Duration(seconds: 2))],
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: Row(
                    children: [
                      Text(
                        nameValue.capitalizeFirst.toString(),
                        style: GoogleFonts.epilogue(
                          color: Color(0xFF371B34),
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      Text(
                        "'s Space ",
                        style: GoogleFonts.epilogue(
                          color: Color(0xFF371B34),
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: CircleAvatar(
                          radius: 30, // Image radius
                          backgroundImage:
                              AssetImage('Assets/Images/profile.jpg'),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40),
              Animate(
                effects: [SlideEffect(duration: Duration(seconds: 2))],
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      greetings(),
                      style: GoogleFonts.epilogue(
                        color: Color(0xFF371B34),
                        fontSize: 26,
                        fontWeight: FontWeight.w500,
                        height: 0.05,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'How are you feeling today?',
                    style: GoogleFonts.epilogue(
                      color: Color(0xFF371B34),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                child: Emotions(),
              ),
              SizedBox(height: 22),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AssessmentWidget(),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                child: Welcomeqoute(),
              ),
              SizedBox(height: 33),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                width: double.infinity,
                height: 150,
                child: Stack(
                  children: [
                    Today(),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: FloatingActionButton(
                        backgroundColor: Color(0xFFFECECE),
                        onPressed: () {},
                        child: Text(
                          '❗️',
                          style: GoogleFonts.epilogue(
                            color: Color(0xFFFFCFCF),
                            fontSize: 31.49,
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
