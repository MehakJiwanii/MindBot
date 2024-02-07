import 'package:chatbot/Screens/ChatScreen.dart';
import 'package:chatbot/Screens/Chatbot.dart';
import 'package:chatbot/Screens/Library/Library.dart';
import 'package:chatbot/Screens/Profile/ProfileScreen.dart';
import 'package:chatbot/Screens/Profile/profile.dart';
import 'package:chatbot/Screens/SelectBot.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:chatbot/Screens/welcome.dart';

import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  final String displayName;
  final String email;

  const NavBar({
    super.key,
    required this.displayName,
    required this.email,
  });

  //const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentPageIndex = 0;
  final screens = [Welcome(), Library(), CombinedChatScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(indicatorColor: Colors.white),
          child: NavigationBar(
              animationDuration: Duration(seconds: 3),
              onDestinationSelected: (currentPageIndex) =>
                  setState(() => this.currentPageIndex = currentPageIndex),
              backgroundColor: Colors.white,
              selectedIndex: currentPageIndex,
              destinations: [
                NavigationDestination(
                  icon: FaIcon(
                    FontAwesomeIcons.house,
                    size: 30,
                    color: Colors.grey,
                  ),
                  selectedIcon: FaIcon(FontAwesomeIcons.house,
                      size: 30, color: Color(0xFF343A48)),
                  label: '',
                ),
                NavigationDestination(
                  icon: Icon(
                    Icons.library_books,
                    size: 35,
                    color: Colors.grey,
                  ),
                  label: '',
                  selectedIcon: Icon(Icons.library_books,
                      size: 35, color: Color(0xFF343A48)),
                ),
                NavigationDestination(
                  icon: Icon(
                    Icons.chat_bubble_outline,
                    size: 35,
                    color: Colors.grey,
                  ),
                  label: '',
                  selectedIcon: Icon(Icons.chat_bubble_outline,
                      size: 29, color: Color(0xFF343A48)),
                ),
                NavigationDestination(
                  icon: FaIcon(
                    FontAwesomeIcons.user,
                    size: 29,
                    color: Colors.grey,
                  ),
                  label: '',
                  selectedIcon: FaIcon(FontAwesomeIcons.user,
                      size: 30, color: Color(0xFF343A48)),
                ),
              ]),
        ),
        backgroundColor: Color(0xFFFAFAFA),
        body: screens[currentPageIndex]);
  }
}
// Uri.parse('http://10.0.2.2:5000/chat?message=$message'),