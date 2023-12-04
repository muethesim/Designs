import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:three_des/design_one_moody/components/exercise_component.dart';

class ScreenMoody extends StatelessWidget {
  const ScreenMoody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(boxShadow: [
          BoxShadow(
            offset: Offset(0, 24),
            blurRadius: 48,
            spreadRadius: -12,
            color: Color.fromRGBO(16, 24, 40, 0.25),
          ),
        ]),
        child: DotNavigationBar(
          margin: EdgeInsets.symmetric(horizontal: 32.w),
          enableFloatingNavBar: false,
          currentIndex: 0,
          dotIndicatorColor: const Color.fromRGBO(2, 122, 72, 1),
          onTap: (index) {},
          items: [
            DotNavigationBarItem(
              icon: SvgPicture.asset("assets/svg/home.svg"),
              selectedColor: Colors.purple,
            ),
            DotNavigationBarItem(
              icon: SvgPicture.asset("assets/svg/grid.svg"),
              selectedColor: Colors.pink,
            ),
            DotNavigationBarItem(
              icon: SvgPicture.asset("assets/svg/calendar.svg"),
              selectedColor: Colors.orange,
            ),
            DotNavigationBarItem(
              icon: SvgPicture.asset("assets/svg/user.svg"),
              selectedColor: Colors.teal,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 32.w, right: 32.w, top: 32.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/imgs/logo.png"),
                        SizedBox(
                          width: 8.w,
                        ),
                        Text(
                          "Moody",
                          style: TextStyle(
                            fontFamily: 'Kefa',
                            fontSize: 24.sp,
                          ),
                        )
                      ],
                    ),
                    const Icon(
                      FeatherIcons.bell,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              SizedBox(
                height: 30.h,
                child: Wrap(
                  children: [
                    Text(
                      "Hello, ",
                      style: GoogleFonts.inter(
                        fontSize: 20.sp,
                        height: 1.5.h,
                      ),
                    ),
                    Text(
                      "Sara Rose",
                      style: GoogleFonts.inter(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                        height: 1.5.h,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Text(
                "How are you feeling today ?",
                style: GoogleFonts.inter(
                  fontSize: 16.sp,
                  height: 1.5.h,
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10.h),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFE4E7EC),
                        ),
                        child: SvgPicture.asset(
                          "assets/svg/love.svg",
                          width: 40.h,
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Text(
                        "Love",
                        style: GoogleFonts.inter(
                          fontSize: 14.sp,
                          height: 1.42.h,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10.h),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFE4E7EC),
                        ),
                        child: SvgPicture.asset(
                          "assets/svg/cool.svg",
                          width: 40.h,
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Text(
                        "Cool",
                        style: GoogleFonts.inter(
                          fontSize: 14.sp,
                          height: 1.42.h,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10.h),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFE4E7EC),
                        ),
                        child: SvgPicture.asset(
                          "assets/svg/happy.svg",
                          width: 40.h,
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Text(
                        "Happy",
                        style: GoogleFonts.inter(
                          fontSize: 14.sp,
                          height: 1.42.h,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10.h),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFE4E7EC),
                        ),
                        child: SvgPicture.asset(
                          "assets/svg/sad.svg",
                          width: 40.h,
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Text(
                        "Sad",
                        style: GoogleFonts.inter(
                          fontSize: 14.sp,
                          height: 1.42.h,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 40.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Feature",
                    style: GoogleFonts.inter(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      height: 1.55.h,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "See more",
                        style: GoogleFonts.inter(
                          color: const Color(0xFF027A48),
                          fontWeight: FontWeight.w600,
                          height: 1.42.h,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 2.84.h),
                        child: const Icon(
                          Icons.keyboard_arrow_right_sharp,
                          color: Color(0xFF027A48),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(24.h),
                decoration: BoxDecoration(
                    color: const Color(0xFFECFDF3),
                    borderRadius: BorderRadius.circular(16.r)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Positive vibes",
                          style: GoogleFonts.inter(
                            fontSize: 16.sp,
                            height: 1.5.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text(
                          "Boost your mood with",
                          style: GoogleFonts.inter(
                            fontSize: 16.sp,
                            height: 1.5.sp,
                          ),
                        ),
                        Text(
                          " positive vibes",
                          style: GoogleFonts.inter(
                            fontSize: 16.sp,
                            height: 1.5.sp,
                          ),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(3.h),
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(50, 213, 131, 1),
                              ),
                              child: Icon(
                                Icons.play_arrow,
                                color: Colors.white,
                                size: 20.h,
                              ),
                            ),
                            SizedBox(
                              width: 8.w,
                            ),
                            Text(
                              "10 mins",
                              style: GoogleFonts.inter(
                                fontSize: 14.sp,
                                height: 1.42.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SvgPicture.asset("assets/svg/DogWalking.svg"),
                  ],
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Align(
                child: DotsIndicator(
                  dotsCount: 3,
                  position: 0,
                  decorator: DotsDecorator(
                    color: const Color.fromRGBO(217, 217, 217, 1),
                    activeColor: const Color.fromRGBO(152, 162, 179, 1),
                    size: Size.fromRadius(3.h),
                    activeSize: Size.fromRadius(3.h),
                    spacing: EdgeInsets.symmetric(horizontal: 3.w),
                  ),
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Exercise",
                    style: GoogleFonts.inter(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      height: 1.55.h,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "See more",
                        style: GoogleFonts.inter(
                          color: const Color(0xFF027A48),
                          fontWeight: FontWeight.w600,
                          height: 1.42.h,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 2.84.h),
                        child: const Icon(
                          Icons.keyboard_arrow_right_sharp,
                          color: Color(0xFF027A48),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ComponentExercise(
                      clr: Color.fromRGBO(249, 245, 255, 1),
                      txt: "Relaxation",
                      svg: "assets/svg/exercise1.svg"),
                  ComponentExercise(
                      clr: Color.fromRGBO(253, 242, 250, 1),
                      txt: "Meditation",
                      svg: "assets/svg/exercise2.svg"),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ComponentExercise(
                      clr: Color.fromRGBO(255, 250, 245, 1),
                      txt: "Beathing",
                      svg: "assets/svg/exercise3.svg"),
                  ComponentExercise(
                      clr: Color.fromRGBO(240, 249, 255, 1),
                      txt: "Yoga",
                      svg: "assets/svg/exercise4.svg"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}


/* Shadow / 2xl */
// box-shadow: 0px 24px 48px -12px