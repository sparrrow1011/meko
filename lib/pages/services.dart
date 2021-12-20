import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meko/forgot.dart';
import 'package:meko/pages/service_repair.dart';
import 'package:meko/pages/services_single.dart';
import 'package:meko/pages/verifying_number.dart';
import 'package:meko/signup_page.dart';
import 'package:meko/util/navigation.dart';
import '../util/font_size.dart';
import '../util/main_button.dart';
import "package:flutter_feather_icons/flutter_feather_icons.dart";
import '../util/theme_colors.dart';

class services extends StatefulWidget {
  const services({Key? key}) : super(key: key);

  @override
  _servicesState createState() => _servicesState();
}

class _servicesState extends State<services> {
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
                            "New request",
                            style: GoogleFonts.workSans(
                              color: ThemeColors.primaryColor,
                              fontSize: FontSize.large,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.h),
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
                                    "History",
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
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => services_single()));
                                    },
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding:
                                          const EdgeInsets.only(right: 10.0),
                                          child: Container(
                                            height: 80,
                                            width: 80,
                                            decoration: new BoxDecoration(
                                              color: ThemeColors.whiteTextColor,
                                              borderRadius: BorderRadius.circular(10),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black26,
                                                  blurRadius: 15.0, // soften the shadow
                                                  spreadRadius: 1.0, //extend the shadow
                                                  offset: Offset(
                                                    .0, // Move to right 10  horizontally
                                                    10.0, // Move to bottom 10 Vertically
                                                  ),
                                                )
                                              ],
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Image.asset(
                                                "assets/images/iconcar2.png",
                                                width: 40,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 20,),
                                        Container(
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
                                              Divider(
                                                color: ThemeColors.greyTextColor,
                                                thickness: 1.w,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(right: 10.0),
                                        child: Container(
                                          height: 80,
                                          width: 80,
                                          decoration: new BoxDecoration(
                                            color: ThemeColors.whiteTextColor,
                                            borderRadius: BorderRadius.circular(10),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black26,
                                                blurRadius: 15.0, // soften the shadow
                                                spreadRadius: 1.0, //extend the shadow
                                                offset: Offset(
                                                  .0, // Move to right 10  horizontally
                                                  10.0, // Move to bottom 10 Vertically
                                                ),
                                              )
                                            ],
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Image.asset(
                                              "assets/images/iconcar2.png",
                                              width: 40,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 20,),
                                      Container(
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
                                                    "Completed",
                                                    style: GoogleFonts.workSans(
                                                      color: Colors.blue,
                                                      fontSize: FontSize.medium,
                                                      fontWeight: FontWeight.w400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Divider(
                                              color: ThemeColors.greyTextColor,
                                              thickness: 1.w,
                                            ),
                                          ],
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
