import 'package:chatbot/Screens/NavBar.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class AllSet extends StatefulWidget {
  const AllSet({super.key});

  @override
  State<AllSet> createState() => _AllSetState();
}

class _AllSetState extends State<AllSet> {
  final _confettiController = ConfettiController();

  @override
  void initState() {
    super.initState();
    // _confettiController= ConfettiController(duration: Duration(seconds: 5));
    _confettiController.play();
  }

  @override
  void dispose() {
    _confettiController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'Assets/Images/Allset.svg',
              height: 400,
            ),
            Center(
              child: Text(
                "You are All",
                style: GoogleFonts.ptSerif(
                  color: Color(0xFF0E1117),
                  fontSize: 35,
                  fontWeight: FontWeight.w700,
                  height: 0,
                  letterSpacing: 0.48,
                ),
              ),
            ),
            Text(
              'Set!!🥳',
              style: GoogleFonts.dancingScript(
                color: Color(0xFF0E1117),
                fontSize: 35,
                fontWeight: FontWeight.w800,
                height: 0,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NavBar(displayName: '', email: ''),
                    ));
              },
              child: Text(
                'Back To Homepage',
                style: GoogleFonts.ptSerif(
                    decoration: TextDecoration.underline,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
            ),
            // Container(
            //   width: 342,
            //   height: 154,
            //   decoration: ShapeDecoration(
            //     color: Color(0xFFCDE7FF),
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(20),
            //     ),
            //   ),
            // ),
            Center(
              child: ConfettiWidget(
                confettiController: _confettiController,
                blastDirection: -1.5,
                emissionFrequency: 0.05,
                numberOfParticles: 20,
                maxBlastForce: 100,
                minBlastForce: 80,
                blastDirectionality: BlastDirectionality.explosive,
                shouldLoop: false,
                colors: const [Colors.blue, Colors.red, Colors.green],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
