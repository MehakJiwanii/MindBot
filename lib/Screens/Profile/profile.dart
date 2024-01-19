import 'package:chatbot/Screens/Profile/ProfileSettings.dart';
import 'package:chatbot/Screens/Profile/ProfileTop.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  //const Profile({super.key});
  final String displayName;
  final String email;

  const Profile({super.key, required this.displayName, required this.email});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF4F3F1),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SafeArea(
            child: Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(child: Center(child: ProfileTop())),
                  SizedBox(
                    height: 25,
                  ),
                  ProfileSettings(),
                  SizedBox(
                    height: 25,
                  ),
                  //HelpSupport(),
                ],
              ),
            ),
          ),
        ));
  }
}
