import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenTop extends StatefulWidget {
  const ScreenTop({super.key});

  @override
  State<ScreenTop> createState() => _ScreenTopState();
}

class _ScreenTopState extends State<ScreenTop> {
  var nameValue = "";

  final nameController = TextEditingController();

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
    return Container(
      child: Animate(
        effects: [SlideEffect(duration: Duration(seconds: 2))],
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Row(
              children: [
                Flexible(
                  child: Text(
                    nameValue.capitalizeFirst.toString(),
                    style: GoogleFonts.epilogue(
                      color: Color(0xFF371B34),
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
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
                Expanded(
                  child: SizedBox(),
                ), // To take remaining space
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: CircleAvatar(
                    radius: 30, // Image radius
                    backgroundImage: AssetImage('Assets/Images/profile.jpg'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
