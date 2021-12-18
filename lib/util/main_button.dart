import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meko/util/theme_colors.dart';

import 'font_size.dart';

class MainButton extends StatelessWidget {
  final String text;
  final Color? backgroundColor;
  final Color? textColor;
  final String? iconPath;
  final Function() onTap;
  const MainButton({
    Key? key,
    required this.text,
    this.backgroundColor,
    this.textColor,
    required this.onTap,
    this.iconPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: backgroundColor == null
              ? ThemeColors.primaryColor
              : backgroundColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              iconPath == null
                  ? Container()
                  : Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Image(
                  image: AssetImage(iconPath!),
                  height: 30,
                ),
              ),
              Text(
                text,
                style: GoogleFonts.workSans(
                  color: textColor == null
                      ? ThemeColors.whiteTextColor
                      : textColor,
                  fontSize: FontSize.large,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MainButton_d extends StatelessWidget {
  final String text;
  final Color? backgroundColor;
  final Color? textColor;
  final String? iconPath;
  final Function() onTap;
  const MainButton_d({
    Key? key,
    required this.text,
    this.backgroundColor,
    this.textColor,
    required this.onTap,
    this.iconPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 30.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: backgroundColor == null
              ? ThemeColors.primaryColor
              : backgroundColor,
          borderRadius: BorderRadius.circular(28),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              iconPath == null
                  ? Container()
                  : Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Image(
                  image: AssetImage(iconPath!),
                  height: 30,
                ),
              ),
              Text(
                text,
                style: GoogleFonts.poppins(
                  color: textColor == null
                      ? ThemeColors.whiteTextColor
                      : textColor,
                  fontSize: FontSize.medium,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class MainButton_outline extends StatelessWidget {
  final String text;
  final Color? backgroundColor;
  final Color? textColor;
  final String? iconPath;
  final Function() onTap;
  const MainButton_outline({
    Key? key,
    required this.text,
    this.backgroundColor,
    this.textColor,
    required this.onTap,
    this.iconPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 30.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: backgroundColor == null
              ? Colors.transparent
              : backgroundColor,
          border: Border.all(color: ThemeColors.whiteTextColor),
          borderRadius: BorderRadius.circular(28),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              iconPath == null
                  ? Container()
                  : Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Image(
                  image: AssetImage(iconPath!),
                  height: 30,
                ),
              ),
              Text(
                text,
                style: GoogleFonts.poppins(
                  color: textColor == null
                      ? ThemeColors.whiteTextColor
                      : textColor,
                  fontSize: FontSize.medium,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MainButton_outline_d extends StatelessWidget {
  final String text;
  final Color? backgroundColor;
  final Color? textColor;
  final String? iconPath;
  final Function() onTap;
  const MainButton_outline_d({
    Key? key,
    required this.text,
    this.backgroundColor,
    this.textColor,
    required this.onTap,
    this.iconPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 30.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: backgroundColor == null
              ? Colors.transparent
              : backgroundColor,
          border: Border.all(color: ThemeColors.titleColor),
          borderRadius: BorderRadius.circular(28),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              iconPath == null
                  ? Container()
                  : Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Image(
                  image: AssetImage(iconPath!),
                  height: 30,
                ),
              ),
              Text(
                text,
                style: GoogleFonts.poppins(
                  color: textColor == null
                      ? ThemeColors.titleColor
                      : textColor,
                  fontSize: FontSize.medium,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}