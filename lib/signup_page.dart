import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meko/login_page.dart';
import 'package:meko/start_page3.dart';
import 'package:meko/verify.dart';
import 'util/font_size.dart';
import 'util/main_button.dart';
import 'util/theme_colors.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Welcome \nuser",
                                      style: GoogleFonts.workSans(
                                        color: Colors.black,
                                        fontSize: FontSize.xxxxLarge,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 10.h),
                                      child: Text(
                                        "Sign up to join",
                                        style: GoogleFonts.workSans(
                                          color: ThemeColors.greyTextColor,
                                          fontSize: FontSize.xMedium,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Stack(
                                  children: [
                                    CircleAvatar(
                                        maxRadius: 35.h,
                                        foregroundImage:  AssetImage("assets/images/user.png")
                                    ),
                                    Positioned(
                                      top: 37.h,
                                      left: 25.w,
                                      child: FlatButton(
                                          onPressed: () {
                                            Navigator.push(context,
                                                MaterialPageRoute(builder: (context) => verifyPage()));
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(50),
                                              color: ThemeColors.primaryColor,
                                            ),
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Icon(Icons.add, color: Colors.white,),
                                              ))),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 40.h),
                            Form(
                              key: _formKey,
                              child: Column(
                                children: [
                                  ///Username Input Field
                                  TextFormField(
                                    style: GoogleFonts.workSans(
                                      color: ThemeColors.titleColor,
                                    ),
                                    keyboardType: TextInputType.text,
                                    cursorColor: ThemeColors.primaryColor,
                                    decoration: InputDecoration(
                                      focusColor: ThemeColors.primaryColor,
                                      labelText: "Name",
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

                                  ///Username Input Field
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

                                  ///Phone Input Field
                                  TextFormField(
                                    style: GoogleFonts.workSans(
                                      color: ThemeColors.titleColor,
                                    ),
                                    keyboardType: TextInputType.number,
                                    cursorColor: ThemeColors.primaryColor,
                                    decoration: InputDecoration(
                                      focusColor: ThemeColors.primaryColor,
                                      labelText: "Phone number",
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

                                  ///Password Input Field
                                  TextFormField(

                                    obscureText: obscureText,
                                    style: GoogleFonts.workSans(
                                      color: ThemeColors.titleColor,
                                    ),
                                    keyboardType: TextInputType.visiblePassword,
                                    cursorColor: ThemeColors.primaryColor,
                                    decoration: InputDecoration(
                                      suffixIcon: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            obscureText = !obscureText;
                                            print('change obscure text ' +
                                                obscureText.toString());
                                          });
                                        },
                                        icon: Icon(
                                          Icons.remove_red_eye,
                                          color: ThemeColors.textFieldHintColor,
                                        ),
                                      ),
                                      labelText: "Password",
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
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 32),
                                      child: Row(
                                        children: [
                                          Text(
                                            "I agree to the ",
                                            style: GoogleFonts.workSans(
                                              color: ThemeColors.greyTextColor,
                                              fontSize: FontSize.large,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.push(context,
                                                  MaterialPageRoute(builder: (context) => LoginPage()));
                                            },
                                            child: Text(
                                              "Terms of Services",
                                              style: GoogleFonts.workSans(
                                                color: Colors.black,
                                                fontSize: FontSize.large,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 40),
                                  MainButton(
                                      text: 'Sign Up',
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => verifyPage()));
                                    },
                                        ),
                                  SizedBox(height: 16),
                                ],
                              ),
                            ),
                          ],
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Already have an account? ",
                                style: GoogleFonts.workSans(
                                  color: ThemeColors.greyTextColor,
                                  fontSize: FontSize.large,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => LoginPage()));
                                },
                                child: Text(
                                  "Sign In",
                                  style: GoogleFonts.workSans(
                                    color: Colors.black,
                                    fontSize: FontSize.large,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
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
