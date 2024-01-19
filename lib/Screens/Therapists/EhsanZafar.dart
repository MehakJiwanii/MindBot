import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class EhsanZafar extends StatefulWidget {
  const EhsanZafar({super.key});

  @override
  State<EhsanZafar> createState() => _EhsanZafarState();
}

class _EhsanZafarState extends State<EhsanZafar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 342,
      height: 154,
      decoration: ShapeDecoration(
        color: Color(0xFFCDE7FF),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  'Dr. Ehsan Zafar',
                  style: GoogleFonts.workSans(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
                Text(
                  'Anxiety, OCD\nMon - Wed\nOnline Sessions\n DHA Phase V',
                  style: GoogleFonts.workSans(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  height: 110,
                  width: 130,
                  child: SvgPicture.asset('Assets/Images/EhsanZafar.svg')),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 25,
                width: 100,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    onPressed: () {},
                    child: Text(
                      'Contact',
                      style: GoogleFonts.montserrat(color: Colors.white),
                    )),
              )
            ],
          )
        ],
      ),
    );
  }
}
