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
import "package:flutter_feather_icons/flutter_feather_icons.dart";
import '../util/theme_colors.dart';

class services_single extends StatefulWidget {
  const services_single({Key? key}) : super(key: key);

  @override
  _services_singleState createState() => _services_singleState();
}

class _services_singleState extends State<services_single> {
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            child: Icon(Icons.arrow_back_ios,),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                          SizedBox(width: 20,),
                          IconButton(
                              icon: Icon(FeatherIcons.bell),
                              onPressed: () {
                                Navigator.pop(context);
                              }),
                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Services",
                            style: GoogleFonts.workSans(
                              color: Colors.black,
                              fontSize: FontSize.xxxLarge,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "New services",
                            style: GoogleFonts.workSans(
                              color: ThemeColors.primaryColor,
                              fontSize: FontSize.large,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30.h),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 480.h,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Center(
                                child: Image.asset(
                                  "assets/images/iconcar3.png",
                                  width: 200,
                                ),
                              ),
                              //services

                              SizedBox(height: 30.h),

                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Divider(
                                    color: ThemeColors.greyBckColor,
                                    thickness: 1.w,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Toyota Camry",
                                          style: GoogleFonts.workSans(
                                            color: ThemeColors.greyTextColor,
                                            fontSize: FontSize.xMedium,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top:8.0),
                                          child: Text(
                                            "Registered 17/09/2021",
                                            style: GoogleFonts.workSans(
                                              color: ThemeColors.greyTextColor,
                                              fontSize: FontSize.medium,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top:8.0),
                                          child: Text(
                                            "VIN: 5J8TB43H8FL0002262",
                                            style: GoogleFonts.workSans(
                                              color: ThemeColors.greyTextColor,
                                              fontSize: FontSize.medium,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top:8.0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Maintenance",
                                                style: GoogleFonts.workSans(
                                                  color: ThemeColors.greyTextColor,
                                                  fontSize: FontSize.medium,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              SizedBox(width: 50,),
                                              Text(
                                                "in Progress",
                                                style: GoogleFonts.workSans(
                                                  color: Colors.green,
                                                  fontSize: FontSize.medium,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Divider(
                                    color: ThemeColors.greyBckColor,
                                    thickness: 1.w,
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Type of Maintenance",
                                        style: GoogleFonts.workSans(
                                          color: ThemeColors.greyTextColor,
                                          fontSize: FontSize.xMedium,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top:8.0),
                                        child: Text(
                                          "Routine Maintenance",
                                          style: GoogleFonts.workSans(
                                            color: ThemeColors.greyTextColor,
                                            fontSize: FontSize.medium,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Technician",
                                        style: GoogleFonts.workSans(
                                          color: ThemeColors.greyTextColor,
                                          fontSize: FontSize.xMedium,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        "Ganiyu Ayodele (GILO)",
                                        style: GoogleFonts.workSans(
                                          color: ThemeColors.greyTextColor,
                                          fontSize: FontSize.xMedium,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top:8.0),
                                        child: Text(
                                          "Date: 17/09/2021",
                                          style: GoogleFonts.workSans(
                                            color: ThemeColors.greyTextColor,
                                            fontSize: FontSize.medium,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),

                                      Padding(
                                        padding: const EdgeInsets.only(top:8.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Time: 10:00am",
                                              style: GoogleFonts.workSans(
                                                color: ThemeColors.greyTextColor,
                                                fontSize: FontSize.medium,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            Text(
                                              "View profile",
                                              style: GoogleFonts.workSans(
                                                color: Colors.blue,
                                                fontSize: FontSize.medium,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Estimated Date",
                                        style: GoogleFonts.workSans(
                                          color: ThemeColors.greyTextColor,
                                          fontSize: FontSize.xMedium,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top:8.0),
                                        child: Text(
                                          "Date: 17/09/2021",
                                          style: GoogleFonts.workSans(
                                            color: ThemeColors.greyTextColor,
                                            fontSize: FontSize.medium,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top:8.0),
                                        child: Text(
                                          "Time: 10:00am",
                                          style: GoogleFonts.workSans(
                                            color: ThemeColors.greyTextColor,
                                            fontSize: FontSize.medium,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
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
                child: Navigation(
                  selectedIndex: selectedIndex,
                  onClicked: onClicked,
                ),
              ))
        ],
      ),
    );
  }
}
