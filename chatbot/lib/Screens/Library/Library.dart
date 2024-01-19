import 'package:chatbot/Screens/Library/Articles.dart';
import 'package:chatbot/Screens/Library/Searchbox.dart';

import 'package:flutter/material.dart';

class Library extends StatefulWidget {
  const Library({super.key});

  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Align(
                alignment: Alignment.bottomLeft,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Library(),
                        ));
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 25,
                    color: Colors.black,
                  ),
                )),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            child: Center(child: SearchBox()),
          ),
          SizedBox(
            height: 40,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              child: Articles(),
            ),
          )
        ]),
      )),
    );
  }
}
