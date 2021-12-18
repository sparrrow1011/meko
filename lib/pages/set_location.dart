import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meko/forgot.dart';
import 'package:meko/pages/choose_language.dart';
import 'package:meko/signup_page.dart';
import 'package:meko/util/font_size.dart';
import 'package:meko/util/main_button.dart';
import 'package:meko/util/theme_colors.dart';


class setLocation extends StatefulWidget {
  const setLocation({Key? key}) : super(key: key);

  @override
  _setLocationState createState() => _setLocationState();
}

class _setLocationState extends State<setLocation> {
  final _formKey = GlobalKey<FormState>();
  final _scaffoldkey = GlobalKey<ScaffoldState>();
  bool loading = false;
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      body: Stack(
              children: [
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30, 60, 30, 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Image.asset("assets/images/location.png",width: 60,),
                                ),
                                SizedBox(height: 40.h),
                                Text(
                                  "Hello, nice to\nmeet you!",
                                  style: GoogleFonts.workSans(
                                    color: Colors.black,
                                    fontSize: FontSize.xxxxLarge,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10.h),
                                  child: Text(
                                    "Set your location to start find car repair shop around you",
                                    style: GoogleFonts.workSans(
                                      color: ThemeColors.greyTextColor,
                                      fontSize: FontSize.xMedium,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 40.h),
                            Form(
                              key: _formKey,
                              child: Column(
                                children: [
                                  MainButton(
                                      text: 'Use current location',
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => chooseLanguage()));
                                    },
                                        ),
                                  SizedBox(height: 26),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10.h),
                              child: Text(
                                "We only access your location while you are using this incredible app",
                                style: GoogleFonts.workSans(
                                  color: ThemeColors.greyTextColor,
                                  fontSize: FontSize.medium,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),

                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 40.h),
                                  child: GestureDetector(
                                    child: Text(
                                      "or set your location manually",
                                      style: GoogleFonts.workSans(
                                        color: Colors.black,
                                        fontSize: FontSize.xLarge,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
