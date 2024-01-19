import 'package:chatbot/Screens/ChatScreen.dart';
import 'package:chatbot/Screens/Homepage.dart';
import 'package:chatbot/Screens/NavBar.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(),
        home: NavBar(displayName: '', email: ''));
  }
}

//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
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      actions: [
        IconButton(
            onPressed: () async {
              await GoogleSignIn().signOut();
              FirebaseAuth.instance.signOut();
            },
            icon: Icon(Icons.power_settings_new)) // IconButton
      ],
    ), // AppBar
  );
}
