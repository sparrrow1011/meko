import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meko/start_page3.dart';

import 'util/font_size.dart';
import 'util/main_button.dart';
import 'util/theme_colors.dart';

class StartPagetwo extends StatefulWidget {
  const StartPagetwo({Key? key}) : super(key: key);

  @override
  _StartPagetwoState createState() => _StartPagetwoState();
}

class _StartPagetwoState extends State<StartPagetwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
            ),
          ),
          Positioned(
            bottom: 0,
            child: Image(
              image: AssetImage('assets/images/first2.png'),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      'Skip',
                      style: GoogleFonts.workSans(
                        color: Colors.white,
                        fontSize: FontSize.large,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset("assets/images/logo_white.png",width: 150,),
                          ],
                        ),
                      ),
                      SizedBox(height: 50.h,),
                      Text(
                        'Tell us where you are parked',
                        style: GoogleFonts.workSans(
                          color: Colors.white,
                          fontSize: FontSize.xxxxLarge,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      SizedBox(height: 20.h,),
                      Text(
                        'Free pick-up and delivery to the location you specify',
                        style: GoogleFonts.poppins(
                          color: ThemeColors.whiteTextColor,
                          fontSize: FontSize.large,
                        ),
                      ),
                      SizedBox(height: 80.h,),
                      Row(
                        children: [
                          Row(
                            children: [
                              Text(
                                '02 ',
                                style: GoogleFonts.poppins(
                                  color: ThemeColors.whiteTextColor,
                                  fontSize: FontSize.large,
                                ),
                              ),
                              Text(
                                '/ 03',
                                style: GoogleFonts.poppins(
                                  color: ThemeColors.greyTextColor,
                                  fontSize: FontSize.large,
                                ),
                              ),

                            ],
                          ),
                          SizedBox(width: 10.w,),
                          Expanded(
                            child: TextFormField(
                              style: GoogleFonts.workSans(
                                color: ThemeColors.whiteTextColor,
                              ),
                              keyboardType: TextInputType.emailAddress,
                              cursorColor: ThemeColors.whiteTextColor,
                              decoration: InputDecoration(
                                focusColor: ThemeColors.whiteTextColor,


                                labelStyle: GoogleFonts.poppins(
                                  color: ThemeColors.whiteTextColor,
                                  fontSize: FontSize.medium,
                                  fontWeight: FontWeight.w400,
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: ThemeColors.whiteTextColor),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: ThemeColors.whiteTextColor),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [

                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: MainButton(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => StartPagethree()));
                          },
                          text: 'Next',
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}