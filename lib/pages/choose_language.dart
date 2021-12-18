import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meko/forgot.dart';
import 'package:meko/pages/car_details.dart';
import 'package:meko/signup_page.dart';
import 'package:meko/util/font_size.dart';
import 'package:meko/util/main_button.dart';
import 'package:meko/util/theme_colors.dart';


class chooseLanguage extends StatefulWidget {
  const chooseLanguage({Key? key}) : super(key: key);

  @override
  _chooseLanguageState createState() => _chooseLanguageState();
}
enum LanguageOptions { English, Chinese, Portuguese, Spanish, Hindi, Arabic, Russian, Bulgarian, Lithuaniar }
class _chooseLanguageState extends State<chooseLanguage> {
  final _formKey = GlobalKey<FormState>();
  final _scaffoldkey = GlobalKey<ScaffoldState>();
  bool loading = false;
  bool obscureText = true;
  LanguageOptions _option = LanguageOptions.English;
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
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  child: Icon(Icons.arrow_back_ios,),
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                ),
                                SizedBox(height: 30.h),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: CircleAvatar(
                                      maxRadius: 35.h,
                                      foregroundImage:  AssetImage("assets/images/user.png")
                                  ),
                                ),
                                SizedBox(height: 40.h),
                                Text(
                                  "Hi, Oyindamola",
                                  style: GoogleFonts.workSans(
                                    color: Colors.black,
                                    fontSize: FontSize.xxxxLarge,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10.h),
                                  child: Text(
                                    "Please select your preferred language to facilitate communication",
                                    style: GoogleFonts.workSans(
                                      color: ThemeColors.greyTextColor,
                                      fontSize: FontSize.xMedium,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20.h),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: [
                                      Radio(
                                          activeColor: ThemeColors.titleColor,
                                          value: LanguageOptions.English,
                                          groupValue: _option,
                                          onChanged: (LanguageOptions? value) {
                                            setState(() {
                                              _option = (value == null)? LanguageOptions.English: value;
                                            });
                                          }),
                                      Text(
                                        'English',
                                        style: GoogleFonts.workSans(
                                        color: Colors.black,
                                        fontSize: FontSize.xLarge,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      ),
                                      Radio(
                                          activeColor: ThemeColors.titleColor,
                                          value: LanguageOptions.Chinese,
                                          groupValue: _option,
                                          onChanged: (LanguageOptions? value) {
                                            setState(() {
                                              _option = (value == null)? LanguageOptions.English: value;
                                            });
                                          }),
                                      Text(
                                        'Chinese',
                                        style: GoogleFonts.workSans(
                                          color: Colors.black,
                                          fontSize: FontSize.xLarge,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Radio(
                                          activeColor: ThemeColors.titleColor,
                                          value: LanguageOptions.Portuguese,
                                          groupValue: _option,
                                          onChanged: (LanguageOptions? value) {
                                            setState(() {
                                              _option = (value == null)? LanguageOptions.English: value;
                                            });
                                          }),
                                      Text(
                                        'Portuguese',
                                        style: GoogleFonts.workSans(
                                          color: Colors.black,
                                          fontSize: FontSize.xLarge,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Radio(
                                          activeColor: ThemeColors.titleColor,
                                          value: LanguageOptions.Spanish,
                                          groupValue: _option,
                                          onChanged: (LanguageOptions? value) {
                                            setState(() {
                                              _option = (value == null)? LanguageOptions.English: value;
                                            });
                                          }),
                                      Text(
                                        'Spanish',
                                        style: GoogleFonts.workSans(
                                          color: Colors.black,
                                          fontSize: FontSize.xLarge,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Radio(
                                          activeColor: ThemeColors.titleColor,
                                          value: LanguageOptions.Hindi,
                                          groupValue: _option,
                                          onChanged: (LanguageOptions? value) {
                                            setState(() {
                                              _option = (value == null)? LanguageOptions.English: value;
                                            });
                                          }),
                                      Text(
                                        'Hindi',
                                        style: GoogleFonts.workSans(
                                          color: Colors.black,
                                          fontSize: FontSize.xLarge,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Radio(
                                          activeColor: ThemeColors.titleColor,
                                          value: LanguageOptions.Arabic,
                                          groupValue: _option,
                                          onChanged: (LanguageOptions? value) {
                                            setState(() {
                                              _option = (value == null)? LanguageOptions.English: value;
                                            });
                                          }),
                                      Text(
                                        'Arabic',
                                        style: GoogleFonts.workSans(
                                          color: Colors.black,
                                          fontSize: FontSize.xLarge,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Radio(
                                          activeColor: ThemeColors.titleColor,
                                          value: LanguageOptions.Russian,
                                          groupValue: _option,
                                          onChanged: (LanguageOptions? value) {
                                            setState(() {
                                              _option = (value == null)? LanguageOptions.English: value;
                                            });
                                          }),
                                      Text(
                                        'Russian',
                                        style: GoogleFonts.workSans(
                                          color: Colors.black,
                                          fontSize: FontSize.xLarge,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Radio(
                                          activeColor: ThemeColors.titleColor,
                                          value: LanguageOptions.Bulgarian,
                                          groupValue: _option,
                                          onChanged: (LanguageOptions? value) {
                                            setState(() {
                                              _option = (value == null)? LanguageOptions.English: value;
                                            });
                                          }),
                                      Text(
                                        'Bulgarian',
                                        style: GoogleFonts.workSans(
                                          color: Colors.black,
                                          fontSize: FontSize.xLarge,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Radio(
                                          activeColor: ThemeColors.titleColor,
                                          value: LanguageOptions.Lithuaniar,
                                          groupValue: _option,
                                          onChanged: (LanguageOptions? value) {
                                            setState(() {
                                              _option = (value == null)? LanguageOptions.English: value;
                                            });
                                          }),
                                      Text(
                                        'Lithuanian',
                                        style: GoogleFonts.workSans(
                                          color: Colors.black,
                                          fontSize: FontSize.xLarge,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ]
                            ),
                            SizedBox(height: 20.h),
                            Form(
                              key: _formKey,
                              child: Column(
                                children: [
                                  MainButton(
                                      text: 'Request a Service',
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => carDetailsOne()));
                                    },
                                        ),
                                  SizedBox(height: 26),
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
