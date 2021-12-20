import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meko/forgot.dart';
import 'package:meko/pages/home.dart';
import 'package:meko/signup_page.dart';
import 'util/font_size.dart';
import 'util/main_button.dart';
import 'util/theme_colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Welcome \nback",
                                      style: GoogleFonts.workSans(
                                        color: Colors.black,
                                        fontSize: FontSize.xxxxLarge,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 10.h),
                                      child: Text(
                                        "Sign in to continue",
                                        style: GoogleFonts.workSans(
                                          color: ThemeColors.greyTextColor,
                                          fontSize: FontSize.xMedium,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
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
                                      labelText: "Username",
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
                                      child: GestureDetector(child: Text(
                                        "Forgot password?",
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
                                    ),
                                  ),
                                  SizedBox(height: 40),
                                  MainButton(
                                      text: 'Login',
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => home()));
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
                                "Don't have an account? ",
                                style: GoogleFonts.workSans(
                                  color: ThemeColors.greyTextColor,
                                  fontSize: FontSize.large,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => SignupPage()));
                                },
                                child: Text(
                                  "Sign Up",
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
