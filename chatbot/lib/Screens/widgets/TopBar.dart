import 'package:flutter/material.dart';
import 'package:chatbot/Screens/Notifications.dart';
import 'package:chatbot/Screens/Profile/profile.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
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
                            builder: (context) => Profile(),
                          ));
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
    );
  }
}
