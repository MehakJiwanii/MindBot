import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Chatbot extends StatefulWidget {
  const Chatbot({super.key});

  @override
  State<Chatbot> createState() => _ChatbotState();
}

class _ChatbotState extends State<Chatbot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Center(
          child: SvgPicture.asset('Assets/Images/UnderConstruction.svg')),
    ));
  }
}
