import 'package:flutter/material.dart';
import 'package:chatbot/Screens/Profile/Help&Support.dart';
import 'package:chatbot/Screens/Profile/ProfileSettings.dart';
import 'package:chatbot/Screens/Profile/ProfileTop.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF4F3F1),
        body: SafeArea(
          child: Expanded(
            child: Column(
              children: [
                Container(child: Center(child: ProfileTop())),
                SizedBox(
                  height: 25,
                ),
                ProfileSettings(),
                SizedBox(
                  height: 25,
                ),
                HelpSupport(),
              ],
            ),
          ),
        ));
  }
}
