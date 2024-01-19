import 'package:flutter/material.dart';
import 'package:chatbot/Screens/Journalling.dart';

class JournalWidget extends StatelessWidget {
  const JournalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155,
      height: 62,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFF4F3F1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              )),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Journalling(),
                ));
          },
          child: Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.book_rounded,
                    color: Color.fromARGB(255, 179, 148, 130),
                  ),
                  Center(
                    child: Text(
                      'Journal',
                      style: TextStyle(
                        color: Color(0xFF573926),
                        fontSize: 14,
                        fontFamily: 'Epilogue',
                        fontWeight: FontWeight.w700,
                        height: 0.16,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
