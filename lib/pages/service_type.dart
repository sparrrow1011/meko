import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meko/forgot.dart';
import 'package:meko/pages/service_repair.dart';
import 'package:meko/pages/verifying_number.dart';
import 'package:meko/signup_page.dart';
import '../util/font_size.dart';
import '../util/main_button.dart';
import '../util/theme_colors.dart';

class ServiceType extends StatefulWidget {
  const ServiceType({Key? key}) : super(key: key);

  @override
  _ServiceTypeState createState() => _ServiceTypeState();
}

class _ServiceTypeState extends State<ServiceType> {
  final _formKey = GlobalKey<FormState>();
  final _scaffoldkey = GlobalKey<ScaffoldState>();
  bool loading = false;
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    final tabs = [
      'Repairs',
      'Maintanance',
    ];
    return Scaffold(
      key: _scaffoldkey,
      body: Stack(
              children: [
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
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
                            Row(
                              children: [
                                Text(
                                  "Service Type",
                                  style: GoogleFonts.workSans(
                                    color: Colors.black,
                                    fontSize: FontSize.xxxxLarge,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 40.h),

                            DefaultTabController(
                              length: tabs.length,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        TabBar(
                                          labelColor: Colors.black,
                                          unselectedLabelColor: Colors.black45,
                                          indicatorColor: ThemeColors.primaryColor,
                                          isScrollable: true,
                                          labelStyle: GoogleFonts.workSans(fontSize: 14.sp),
                                          unselectedLabelStyle: GoogleFonts.workSans(
                                            fontSize: 14.sp,
                                          ),
                                          tabs: [
                                            for (final tab in tabs) Tab(text: tab),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 20,),
                                  Container(
                                    height: 300.h,
                                    child: TabBarView(
                                      children: [
                                        Container(
                                          child: ServiceRepairs(name: '',),
                                        ),
                                        Container(
                                          child: Text("hello"),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 25.h),
                                  MainButton(
                                    text: 'Get Technician',
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => verifyNumber()));
                                    },
                                  ),
                                  SizedBox(height: 16),
                                ],
                              ),
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
