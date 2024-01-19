import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Articles extends StatelessWidget {
  const Articles({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Container(
            width: 305,
            height: 103.29,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 5, backgroundColor: Colors.white),
                onPressed: () {},
                child: Container(
                  child: Row(children: [
                    SvgPicture.asset('Assets/Images/1.svg'),
                    SizedBox(
                      width: 2,
                    ),
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
                            'Coping with loss and grief',
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text('Self-care',
                                style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                )),
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.favorite_border_outlined,
                      size: 21,
                      color: Colors.black,
                    )
                  ]),
                )),
          ),
          SizedBox(
            height: 40,
          ),
          ////
          //CONTAINER #2
          ///////
          ///
          ///
          Container(
            width: 305,
            height: 103.29,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 5, backgroundColor: Colors.white),
                onPressed: () {},
                child: Container(
                  child: Row(children: [
                    SvgPicture.asset('Assets/Images/2.svg'),
                    SizedBox(
                      width: 2,
                    ),
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
                            'Coping with loss and grief',
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text('Self-care',
                                style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                )),
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.favorite_border_outlined,
                      size: 21,
                      color: Colors.black,
                    )
                  ]),
                )),
          ),
          SizedBox(
            height: 40,
          ),

          ////
          ///
          ///
          ///

          /////
          ///
          ///CONTAINER 3
          ///
          ////
          Container(
            width: 305,
            height: 103.29,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 5, backgroundColor: Colors.white),
                onPressed: () {},
                child: Container(
                  child: Row(children: [
                    Container(
                        height: 100,
                        width: 70,
                        child: SvgPicture.asset('Assets/Images/3.svg')),
                    SizedBox(
                      width: 2,
                    ),
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
                            'Coping with loss and grief',
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text('Self-care',
                                style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                )),
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.favorite_border_outlined,
                      size: 21,
                      color: Colors.black,
                    )
                  ]),
                )),
          ),
          SizedBox(
            height: 40,
          ),
          /////
          ///
          ///
          ///
          Container(
            width: 305,
            height: 103.29,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 5, backgroundColor: Colors.white),
                onPressed: () {},
                child: Container(
                  child: Row(children: [
                    Container(
                      height: 100,
                      width: 70,
                      child: SvgPicture.asset(
                        'Assets/Images/4.svg',
                      ),
                    ),
                    SizedBox(
                      width: 2,
                    ),
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
                            'Coping with loss and grief',
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text('Self-care',
                                style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                )),
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.favorite_border_outlined,
                      size: 21,
                      color: Colors.black,
                    )
                  ]),
                )),
          ),
          SizedBox(
            height: 40,
          ),

          /////
          ///
          ///
          ///
          ///
          ///
          ///SESSION 2
          ////
          ///
          ///
          Container(
            width: 305,
            height: 103.29,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 5, backgroundColor: Colors.white),
                onPressed: () {},
                child: Container(
                  child: Row(children: [
                    SvgPicture.asset('Assets/Images/1.svg'),
                    SizedBox(
                      width: 2,
                    ),
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
                            'Coping with loss and grief',
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text('Self-care',
                                style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                )),
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.favorite_border_outlined,
                      size: 21,
                      color: Colors.black,
                    )
                  ]),
                )),
          ),
          SizedBox(
            height: 40,
          ),
          ////
          //CONTAINER #2
          ///////
          ///
          ///
          Container(
            width: 305,
            height: 103.29,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 5, backgroundColor: Colors.white),
                onPressed: () {},
                child: Container(
                  child: Row(children: [
                    SvgPicture.asset('Assets/Images/2.svg'),
                    SizedBox(
                      width: 2,
                    ),
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
                            'Coping with loss and grief',
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text('Self-care',
                                style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                )),
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.favorite_border_outlined,
                      size: 21,
                      color: Colors.black,
                    )
                  ]),
                )),
          ),
          SizedBox(
            height: 40,
          ),

          ////
          ///
          ///
          ///

          /////
          ///
          ///CONTAINER 3
          ///
          ////
          Container(
            width: 305,
            height: 103.29,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 5, backgroundColor: Colors.white),
                onPressed: () {},
                child: Container(
                  child: Row(children: [
                    Container(
                        height: 100,
                        width: 70,
                        child: SvgPicture.asset('Assets/Images/3.svg')),
                    SizedBox(
                      width: 2,
                    ),
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
                            'Coping with loss and grief',
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text('Self-care',
                                style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                )),
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.favorite_border_outlined,
                      size: 21,
                      color: Colors.black,
                    )
                  ]),
                )),
          ),
          SizedBox(
            height: 40,
          ),
          /////
          ///
          ///
          ///
          Container(
            width: 305,
            height: 103.29,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 5, backgroundColor: Colors.white),
                onPressed: () {},
                child: Container(
                  child: Row(children: [
                    Container(
                      height: 100,
                      width: 70,
                      child: SvgPicture.asset(
                        'Assets/Images/4.svg',
                      ),
                    ),
                    SizedBox(
                      width: 2,
                    ),
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
                            'Coping with loss and grief',
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text('Self-care',
                                style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                )),
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.favorite_border_outlined,
                      size: 21,
                      color: Colors.black,
                    )
                  ]),
                )),
          ),
        ],
      ),
    );
  }
}
