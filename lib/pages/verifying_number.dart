import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meko/forgot.dart';
import 'package:meko/pages/payment_successful.dart';
import 'package:meko/pages/service_type.dart';
import 'package:meko/signup_page.dart';
import '../util/font_size.dart';
import '../util/main_button.dart';
import '../util/theme_colors.dart';

class verifyNumber extends StatefulWidget {
  const verifyNumber({Key? key}) : super(key: key);

  @override
  _verifyNumberState createState() => _verifyNumberState();
}

class _verifyNumberState extends State<verifyNumber> {
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
                                  "Verifying \nyour number",
                                  style: GoogleFonts.workSans(
                                    color: Colors.black,
                                    fontSize: FontSize.xxxxLarge,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20.h),
                            Text(
                              "We’ve sent your verification code to your mobile number that ends with ******3217",
                              style: GoogleFonts.workSans(
                                color: Colors.black45,
                                fontSize: FontSize.large,
                                fontWeight: FontWeight.w500,
                              ),
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
                                    keyboardType: TextInputType.text,
                                    cursorColor: ThemeColors.primaryColor,
                                    decoration: InputDecoration(
                                      focusColor: ThemeColors.primaryColor,
                                      labelText: "Enter code",
                                      labelStyle: GoogleFonts.workSans(
                                        color: ThemeColors.greyTextColor,
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
                                          MaterialPageRoute(builder: (context) => paymentSuccessful()));
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
