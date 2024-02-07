import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class MaryamHanif extends StatefulWidget {
  const MaryamHanif({super.key});

  @override
  State<MaryamHanif> createState() => _MaryamHanifState();
}

class _MaryamHanifState extends State<MaryamHanif> {
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
                  'Dr.Maryam Hanif',
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
                  width: 120,
                  child: SvgPicture.asset('Assets/Images/MaryamHanif.svg')),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 25,
                width: 100,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 117, 99, 99),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    onPressed: () {
                      FlutterPhoneDirectCaller.callNumber('+923353966816');
                    },
                    child: GestureDetector(
                      onTap: () {
                        FlutterPhoneDirectCaller.callNumber('+923353966816');
                      },
                      child: Text(
                        'Contact',
                        style: GoogleFonts.montserrat(color: Colors.white),
                      ),
                    )),
              )
            ],
          )
        ],
      ),
    );
  }
}
