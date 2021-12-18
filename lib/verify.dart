import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meko/forgot.dart';
import 'package:meko/pages/set_location.dart';
import 'package:meko/signup_page.dart';
import 'util/font_size.dart';
import 'util/main_button.dart';
import 'util/theme_colors.dart';

class verifyPage extends StatefulWidget {
  const verifyPage({Key? key}) : super(key: key);

  @override
  _verifyPageState createState() => _verifyPageState();
}

class _verifyPageState extends State<verifyPage> {
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
                                Text(
                                  "Verifying \nyour account",
                                  style: GoogleFonts.workSans(
                                    color: Colors.black,
                                    fontSize: FontSize.xxxxLarge,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10.h),
                                  child: Text(
                                    "We’ve sent your verification code to your email address.",
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
                                  ///Code Input Field
                                  TextFormField(
                                    style: GoogleFonts.workSans(
                                      color: ThemeColors.titleColor,
                                    ),
                                    keyboardType: TextInputType.number,
                                    cursorColor: ThemeColors.primaryColor,
                                    decoration: InputDecoration(
                                      focusColor: ThemeColors.primaryColor,
                                      labelText: "Enter code",
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
                                      text: 'Verify',
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => setLocation()));
                                    },
                                        ),
                                  SizedBox(height: 26),
                                   Row(
                                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                     children: [
                                       GestureDetector(child: Text(
                                         "Resend code",
                                         style: GoogleFonts.workSans(
                                           color: Colors.black,
                                           fontSize: FontSize.large,
                                           fontWeight: FontWeight.w400,
                                         ),
                                       ),
                                         onTap: () {
                                           Navigator.push(context,
                                               MaterialPageRoute(builder: (context) => forgotpwd()));
                                         },
                                       ),
                                       Text(
                                         "1:20 min left",
                                         style: GoogleFonts.workSans(
                                           color: ThemeColors.greyTextColor,
                                           fontSize: FontSize.xMedium,
                                           fontWeight: FontWeight.w500,
                                         ),
                                       ),
                                     ],
                                   ),
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
