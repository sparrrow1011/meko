import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meko/forgot.dart';
import 'package:meko/pages/service_repair.dart';
import 'package:meko/pages/verifying_number.dart';
import 'package:meko/signup_page.dart';
import 'package:meko/util/navigation.dart';
import '../util/font_size.dart';
import '../util/main_button.dart';
import '../util/theme_colors.dart';

class mechDetails extends StatefulWidget {
  const mechDetails({Key? key}) : super(key: key);

  @override
  _mechDetailsState createState() => _mechDetailsState();
}

class _mechDetailsState extends State<mechDetails> {
  final _formKey = GlobalKey<FormState>();
  final _scaffoldkey = GlobalKey<ScaffoldState>();
  bool loading = false;
  bool obscureText = true;
  int selectedIndex = 0;

  void onClicked(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      body: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 60, 30, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                GestureDetector(
                                  child: Icon(Icons.arrow_back_ios,),
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Image.asset("assets/images/location2.png",width: 20,),
                                ),
                                SizedBox(width: 10.w,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Your Location",
                                      style: GoogleFonts.workSans(
                                        color: Colors.black,
                                        fontSize: FontSize.medium,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    Text(
                                      "Sabo, Yaba Lagos",
                                      style: GoogleFonts.workSans(
                                        color: Colors.black,
                                        fontSize: FontSize.large,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 40.h),
                            CircleAvatar(
                                maxRadius: 65.h,
                                foregroundImage:  AssetImage("assets/images/user.png")
                            ),
                            Text(
                              "Ganiyu Ayodele",
                              style: GoogleFonts.workSans(
                                color: Colors.black,
                                fontSize: FontSize.large,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              "Prefered Name: GILO",
                              style: GoogleFonts.workSans(
                                color: Colors.black,
                                fontSize: FontSize.xLarge,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "Experience : 5years",
                              style: GoogleFonts.workSans(
                                color: Colors.black,
                                fontSize: FontSize.large,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: 40.h),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 290.h,
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    //services
                                    Row(
                                      children: [
                                        Text(
                                          "Services",
                                          style: GoogleFonts.workSans(
                                            color: Colors.black,
                                            fontSize: FontSize.large,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 20.h),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(right: 10.0),
                                                  child: Image.asset("assets/images/iconseat.png",width: 12,),
                                                ),
                                                Text(
                                                  "Electrical",
                                                  style: GoogleFonts.workSans(
                                                    color: ThemeColors.greyTextColor,
                                                    fontSize: FontSize.large,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 30,),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(right: 10.0),
                                                  child: Image.asset("assets/images/icontyre.png",width: 12,),
                                                ),
                                                Text(
                                                  "Wheel Balancing",
                                                  style: GoogleFonts.workSans(
                                                    color: ThemeColors.greyTextColor,
                                                    fontSize: FontSize.large,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(right: 10.0),
                                                  child: Image.asset("assets/images/iconair.png",width: 12,),
                                                ),
                                                Text(
                                                  "Mechanical",
                                                  style: GoogleFonts.workSans(
                                                    color: ThemeColors.greyTextColor,
                                                    fontSize: FontSize.large,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 30,),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(right: 10.0),
                                                  child: Image.asset("assets/images/iconsun.png",width: 12,),
                                                ),
                                                Text(
                                                  "Pain protection",
                                                  style: GoogleFonts.workSans(
                                                    color: ThemeColors.greyTextColor,
                                                    fontSize: FontSize.large,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),



                                    //brands
                                    SizedBox(height: 40.h),
                                    Row(
                                      children: [
                                        Text(
                                          "Brands",
                                          style: GoogleFonts.workSans(
                                            color: Colors.black,
                                            fontSize: FontSize.large,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 20.h),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(right: 10.0),
                                                  child: Image.asset("assets/images/iconcar.png",width: 40,),
                                                ),
                                                Text(
                                                  "Honda",
                                                  style: GoogleFonts.workSans(
                                                    color: ThemeColors.greyTextColor,
                                                    fontSize: FontSize.large,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 30,),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(right: 10.0),
                                                  child: Image.asset("assets/images/iconcar.png",width: 40,),
                                                ),
                                                Text(
                                                  "Toyota",
                                                  style: GoogleFonts.workSans(
                                                    color: ThemeColors.greyTextColor,
                                                    fontSize: FontSize.large,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(right: 10.0),
                                                  child: Image.asset("assets/images/iconcar.png",width: 40,),
                                                ),
                                                Text(
                                                  "BMW",
                                                  style: GoogleFonts.workSans(
                                                    color: ThemeColors.greyTextColor,
                                                    fontSize: FontSize.large,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 30,),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(right: 10.0),
                                                  child: Image.asset("assets/images/iconcar.png",width: 40,),
                                                ),
                                                Text(
                                                  "Mercedes Benz",
                                                  style: GoogleFonts.workSans(
                                                    color: ThemeColors.greyTextColor,
                                                    fontSize: FontSize.large,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),

                                    //Reviews
                                    SizedBox(height: 40.h),
                                    Row(
                                      children: [
                                        Text(
                                          "Reviews",
                                          style: GoogleFonts.workSans(
                                            color: Colors.black,
                                            fontSize: FontSize.large,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 20.h),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(right: 10.0),
                                              child: CircleAvatar(
                                                  maxRadius: 15.h,
                                                  foregroundImage:  AssetImage("assets/images/user.png")
                                              ),
                                            ),
                                            Container(
                                              width: MediaQuery.of(context).size.width -120.w,
                                              child: Text(
                                                "A very reliable mechanic, helped me with series of problems on my car that faithful day",
                                                style: GoogleFonts.workSans(
                                                  color: ThemeColors.greyTextColor,
                                                  fontSize: FontSize.medium,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 30,),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(right: 10.0),
                                              child: CircleAvatar(
                                                  maxRadius: 15.h,
                                                  foregroundImage:  AssetImage("assets/images/user.png")
                                              ),
                                            ),
                                            Container(
                                              width: MediaQuery.of(context).size.width -120.w,
                                              child: Text(
                                                "A very reliable mechanic, helped me with series of problems on my car that faithful day",
                                                style: GoogleFonts.workSans(
                                                  color: ThemeColors.greyTextColor,
                                                  fontSize: FontSize.medium,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 30,),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(right: 10.0),
                                              child: CircleAvatar(
                                                  maxRadius: 15.h,
                                                  foregroundImage:  AssetImage("assets/images/user.png")
                                              ),
                                            ),
                                            Container(
                                              width: MediaQuery.of(context).size.width -120.w,
                                              child: Text(
                                                "A very reliable mechanic, helped me with series of problems on my car that faithful day",
                                                style: GoogleFonts.workSans(
                                                  color: ThemeColors.greyTextColor,
                                                  fontSize: FontSize.medium,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 30,),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(right: 10.0),
                                              child: CircleAvatar(
                                                  maxRadius: 15.h,
                                                  foregroundImage:  AssetImage("assets/images/user.png")
                                              ),
                                            ),
                                            Container(
                                              width: MediaQuery.of(context).size.width -120.w,
                                              child: Text(
                                                "A very reliable mechanic, helped me with series of problems on my car that faithful day",
                                                style: GoogleFonts.workSans(
                                                  color: ThemeColors.greyTextColor,
                                                  fontSize: FontSize.medium,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 30,),
                                      ],
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
                ),
                //navigation
                Align(

                  alignment: Alignment.bottomCenter,
                    child: Container(
                      color: Colors.grey,
                      height: 75.h,
                      child: Navigation(selectedIndex: selectedIndex, onClicked: onClicked,
                      ),
                    )
                )

              ],
            ),
    );
  }
}
