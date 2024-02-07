import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Articles extends StatelessWidget {
  const Articles({super.key});

  Widget buildArticleContainer(
    String imagePath,
    String articleUrl,
    String title,
    String subtitle,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        width: double.infinity,
        height: 103.29,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          shadows: [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 4,
              offset: Offset(2, 4),
              spreadRadius: 2,
            ),
          ],
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () async {
            final Uri url = Uri.parse(articleUrl);
            if (!await launchUrl(url)) {
              throw Exception('Could not launch $url');
            }
          },
          child: Container(
            child: Row(
              children: [
                SvgPicture.asset(
                  imagePath,
                  height: 60,
                  width: 25,
                ),
                SizedBox(width: 2),
                Container(
                  width: 180,
                  height: 90.89,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'Priory Healthcare’s guide to',
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Text(
                        title,
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          subtitle,
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          SizedBox(height: 40),
          buildArticleContainer(
            'Assets/Images/1.svg',
            'https://www.helpguide.org/articles/grief/coping-with-grief-and-loss.htm',
            'Coping with loss and grief',
            'Self-care',
          ),
          SizedBox(height: 40),
          buildArticleContainer(
            'Assets/Images/2.svg',
            'https://www.helpguide.org/articles/healthy-living/finding-joy-during-difficult-times.htm',
            'Finding Joy in Difficult Times',
            'Self-care',
          ),
          SizedBox(height: 40),
          buildArticleContainer(
            'Assets/Images/ressilance.svg',
            'https://www.helpguide.org/articles/stress/surviving-tough-times.htm',
            'Surviving Tough Times by Building Resilience',
            'Self-care',
          ),
          SizedBox(height: 40),
          buildArticleContainer(
            'Assets/Images/4.svg',
            'https://www.helpguide.org/articles/ptsd-trauma/helping-someone-with-ptsd.htm',
            'Coping with PTSD and Trauma',
            'Self-care',
          ),
          SizedBox(height: 40),
          buildArticleContainer(
            'Assets/Images/narcasisst.svg',
            'https://www.helpguide.org/articles/mental-disorders/narcissistic-personality-disorder.htm',
            'Tips to spot narcissism traits',
            'Self-care',
          ),
          SizedBox(height: 40),
          buildArticleContainer(
            'Assets/Images/anorexiaNervosa.svg',
            'https://www.helpguide.org/articles/eating-disorders/anorexia-nervosa.htm',
            'Anorexia Nervosa',
            'Self-care',
          ),
          SizedBox(height: 40),
          buildArticleContainer(
            'Assets/Images/therepy.svg',
            'https://www.helpguide.org/articles/therapy-medication/online-therapy-is-it-right-for-you.htm',
            'Is Online Therapy right for you?',
            'Self-care',
          ),
        ],
      ),
    );
  }
}
