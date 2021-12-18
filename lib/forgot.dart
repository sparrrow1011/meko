import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meko/start_page3.dart';
import 'util/font_size.dart';
import 'util/main_button.dart';
import 'util/theme_colors.dart';

class forgotpwd extends StatefulWidget {
  const forgotpwd({Key? key}) : super(key: key);

  @override
  _forgotpwdState createState() => _forgotpwdState();
}

class _forgotpwdState extends State<forgotpwd> {
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
                    padding: const EdgeInsets.fromLTRB(30, 20, 30, 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
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
                                Center(
                                  child: Text(
                                    "Reset Password",
                                    style: GoogleFonts.workSans(
                                      color: Colors.black,
                                      fontSize: FontSize.large,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 20,)
                              ],
                            ),
                            SizedBox(height: 40.h),
                            Text(
                              "Enter your email and will send you instruction on how to reset it",
                              style: GoogleFonts.workSans(
                                color: Colors.black,
                                fontSize: FontSize.xLarge,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: 40.h),
                            Form(
                              key: _formKey,
                              child: Column(
                                children: [
                                  ///Email Input Field
                                  TextFormField(
                                    style: GoogleFonts.workSans(
                                      color: ThemeColors.titleColor,
                                    ),
                                    keyboardType: TextInputType.emailAddress,
                                    cursorColor: ThemeColors.primaryColor,
                                    decoration: InputDecoration(
                                      focusColor: ThemeColors.primaryColor,
                                      labelText: "Email",
                                      labelStyle: GoogleFonts.workSans(
                                        color: ThemeColors.titleColor,
                                        fontSize: FontSize.large,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: ThemeColors.greyBckColor),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: ThemeColors.primaryColor),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 25.h),
                                  MainButton(
                                      text: 'Send',
                                      onTap: () async {
                                        }),
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
