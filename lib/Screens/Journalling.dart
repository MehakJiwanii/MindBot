import 'package:flutter/material.dart';
import 'package:chatbot/Screens/widgets/Dates.dart';
import 'package:chatbot/Screens/widgets/Screentop.dart';

class Journalling extends StatefulWidget {
  const Journalling({super.key});

  @override
  State<Journalling> createState() => _JournallingState();
}

class _JournallingState extends State<Journalling> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(children: [
        Container(
          child: ScreenTop(),
        ),
        Container(
          child: Dates(),
        ),
        SizedBox(
          height: 11,
        ),
        Container(
          height: 470,
          width: 350,
          decoration: ShapeDecoration(
            color: Color.fromARGB(255, 225, 245, 250),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: '  Start Typing about anything..'),
          ),
        )
      ]),
    ));
  }
}
