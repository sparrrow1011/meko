import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meko/util/font_size.dart';
import 'package:meko/util/theme_colors.dart';


class ServiceRepairs extends StatefulWidget {
  ServiceRepairs({Key? key, required this.name}) : super(key: key);

  final String name;
  @override
  _ServiceRepairsState createState() => _ServiceRepairsState();
}
class SuperHero {

  final String name;
  final String picture;

  SuperHero(this.name,  this.picture, );
}

class _ServiceRepairsState extends State<ServiceRepairs> {
  List<SuperHero> items = <SuperHero>[];

  _ServiceRepairsState () {
    items.add(new SuperHero("Dämaged engine fan-belt ","assets/images/picture1.png",));
    items.add(new SuperHero("Damaged fuel pump","assets/images/picture2.png",));
    items.add(new SuperHero("Bad exhaust pipe","assets/images/picture3.png",));
    items.add(new SuperHero("Failing Oil filter","assets/images/picture4.png",));
  }

  Widget SuperHeroCell(BuildContext ctx, int index) {
    return GestureDetector(
      onTap: () {},
      child: Align(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.0.w,
                          vertical: 1.h),
                      child: Container(
                        height: 45.h,
                        width: 50.w,
                        decoration: const BoxDecoration(
                            borderRadius:
                            BorderRadius.all(
                                Radius.circular(
                                    10))),
                        child: Padding(
                          padding:
                          EdgeInsets.all(.0.h),
                          child: Hero(
                            tag: items[index],
                            child: Container(
                              height: 30.h,
                              width: 35.w,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(10))),
                              child: Image.asset(items[index].picture, width: 50,),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: [
                        Text(
                          items[index].name,
                          style:
                          GoogleFonts.workSans(
                            color: ThemeColors.greyTextColor,
                            fontSize:
                            FontSize.medium.sp,
                            fontWeight:
                            FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Icon(Icons.keyboard_arrow_up_rounded, color: ThemeColors.greyTextColor,),
              ],
            ),
            SizedBox(
              height: 12.h,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140.h,
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) => SuperHeroCell(context, index),
      ),
    );
  }
}


