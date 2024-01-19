import 'package:chatbot/Screens/Chatbot.dart';
import 'package:chatbot/Screens/Library/Library.dart';
import 'package:chatbot/Screens/Profile/profile.dart';

import 'package:chatbot/Screens/welcome.dart';

import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentPageIndex = 0;
  final screens = [
    Welcome(),
    Library(),
    Chatbot(),
    Profile(),
  ];
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
                  icon: Icon(
                    Icons.home,
                    size: 35,
                    color: Colors.grey,
                  ),
                  selectedIcon: Icon(
                    Icons.home,
                    size: 35,
                    color: Colors.black,
                  ),
                  label: '',
                ),
                NavigationDestination(
                  icon: Icon(
                    Icons.library_books,
                    size: 35,
                    color: Colors.grey,
                  ),
                  label: '',
                  selectedIcon: Icon(
                    Icons.library_books,
                    size: 35,
                    color: Colors.black,
                  ),
                ),
                NavigationDestination(
                  icon: Icon(
                    Icons.chat_bubble_outline,
                    size: 35,
                    color: Colors.grey,
                  ),
                  label: '',
                  selectedIcon: Icon(
                    Icons.chat_bubble_outline,
                    size: 35,
                    color: Colors.black,
                  ),
                ),
                NavigationDestination(
                  icon: Icon(
                    Icons.person_2_outlined,
                    size: 35,
                    color: Colors.grey,
                  ),
                  label: '',
                  selectedIcon: Icon(
                    Icons.people_alt,
                    size: 35,
                    color: Colors.black,
                  ),
                ),
              ]),
        ),
        backgroundColor: Color(0xFFFAFAFA),
        body: screens[currentPageIndex]);
  }
}
