import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meko/forgot.dart';
import 'package:meko/pages/mech_details.dart';
import 'package:meko/pages/service_type.dart';
import 'package:meko/signup_page.dart';
import '../util/font_size.dart';
import '../util/main_button.dart';
import '../util/theme_colors.dart';

class paymentSuccessful extends StatefulWidget {
  const paymentSuccessful({Key? key}) : super(key: key);

  @override
  _paymentSuccessfulState createState() => _paymentSuccessfulState();
}

class _paymentSuccessfulState extends State<paymentSuccessful> {
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
          Positioned(
            bottom: 0,
            child: Image(
                image: AssetImage(
                  'assets/images/mapimage.png',
                ),
                color: const Color.fromRGBO(255, 255, 255, 1),
                colorBlendMode: BlendMode.modulate),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(height: 100.h,),
                Column(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Image.asset("assets/images/successicon.png",width: 100,),
                    ),
                    SizedBox(height: 30.h,),
                    Text(
                      "Payment \nSuccessful",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.workSans(
                        color: Colors.white,
                        fontSize: FontSize.xxxxLarge,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    color: Colors.white,
                  ),
                  height: 230.h,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.h,vertical: 10.h),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Technician assigned to you",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.workSans(
                                color: Colors.black,
                                fontSize: FontSize.xLarge,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: 8.0.w),
                                  child: Image.asset("assets/images/successimage.png",width: 150.w,),
                                ),
                                Text(
                                  "Ganiyu Ayodele",
                                  style: GoogleFonts.workSans(
                                    color: Colors.black,
                                    fontSize: FontSize.xLarge,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Image.asset("assets/images/path.png",width: 20.w,),
                                    Text(
                                      "0.31mins away",
                                      style: GoogleFonts.workSans(
                                        color: Colors.black,
                                        fontSize: FontSize.medium,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ],
                                ),

                              ],
                            ),
                            Image.asset("assets/images/smallmap.png",width: 170.w,),
                          ],
                        ),
                        MainButton(
                          text: 'Get Technician',
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => mechDetails()));
                          },
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
