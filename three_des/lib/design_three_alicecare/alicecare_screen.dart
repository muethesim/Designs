import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:three_des/design_three_alicecare/components/card_component.dart';
import 'package:three_des/design_three_alicecare/components/component_topics.dart';

class ScreenAliceCare extends StatelessWidget {
  const ScreenAliceCare({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(24.h),
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 24),
              blurRadius: 48,
              spreadRadius: -12,
              color: Color.fromRGBO(16, 24, 40, 0.25),
            ),
          ],
          color: Colors.white,
        ),
        child: BottomNavigationBar(
          currentIndex: 1,
          selectedLabelStyle: GoogleFonts.inter(
            fontSize: 12.sp,
          ),
          selectedItemColor: const Color.fromRGBO(105, 65, 198, 1),
          unselectedLabelStyle: GoogleFonts.inter(
            fontSize: 12.sp,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(
                  bottom: 8.h,
                ),
                child: SvgPicture.asset("assets/svg/calendar.svg"),
              ),
              label: "Today",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(
                  bottom: 8.h,
                ),
                child: SvgPicture.asset(
                  "assets/svg/grid.svg",
                  colorFilter: const ColorFilter.mode(
                      Color.fromRGBO(105, 65, 198, 1), BlendMode.srcIn),
                ),
              ),
              label: "Insights",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(
                  bottom: 8.h,
                ),
                child: SvgPicture.asset("assets/svg/chat.svg"),
              ),
              label: "Chat",
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.only(
            top: 32.h,
            left: 32.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 32.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/svg/alicelogo.svg",
                      width: 24.h,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      "AliceCare",
                      style: GoogleFonts.milonga(
                        fontSize: 24.sp,
                        height: 1.33.sp,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Container(
                margin: EdgeInsets.only(right: 32.w),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 1),
                      blurRadius: 2,
                      spreadRadius: 0,
                      color: Color.fromRGBO(16, 24, 40, 0.05),
                    )
                  ],
                ),
                child: TextField(
                  style: GoogleFonts.inter(
                    fontSize: 16.sp,
                  ),
                  cursorColor: const Color.fromRGBO(208, 213, 221, 1),
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    prefixIconColor: const Color.fromRGBO(102, 112, 133, 1),
                    hintText: "Articles, Video, Audio and More,...",
                    hintStyle: GoogleFonts.inter(
                      fontSize: 16.sp,
                      color: const Color.fromRGBO(102, 112, 133, 1),
                    ),
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(208, 213, 221, 1),
                      ),
                    ),
                    contentPadding: EdgeInsets.only(
                      top: 10.h,
                      bottom: 10.h,
                      left: 14.w,
                      right: 14.w,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(208, 213, 221, 1),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(208, 213, 221, 1),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                  children: [
                    const ComponentTopic(
                      txt: "Discover",
                      textColor: Color(0xFF6941C6),
                      borderColor: Color(0xFFD6BBFB),
                      bgColor: Color(0xFFF4EBFF),
                    ),
                    SizedBox(
                      width: 8.h,
                    ),
                    const ComponentTopic(
                      txt: "News",
                    ),
                    SizedBox(
                      width: 8.h,
                    ),
                    const ComponentTopic(
                      txt: "Most Viewed",
                    ),
                    SizedBox(
                      width: 8.h,
                    ),
                    const ComponentTopic(
                      txt: "Trending",
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Padding(
                padding: EdgeInsets.only(right: 32.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hot topics",
                      style: GoogleFonts.inter(
                        fontSize: 18.sp,
                        height: 1.55.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "See all",
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w600,
                            fontSize: 14.sp,
                            color: const Color(0xFF5925DC),
                          ),
                        ),
                        const Icon(
                          Icons.chevron_right,
                          size: 20,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const ComponentCard(
                      image: "assets/imgs/bg3-1.jpeg",
                      type: "SELF-CARE",
                      msg:
                          "10 Easy Self-Care Ideas That Can Help Boost Your Health",
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    const ComponentCard(
                      image: "assets/imgs/bg3-2.jpeg",
                      type: "HEALTH-CARE",
                      msg: "That Can Help Boost Your Health, Have Fun",
                    ),
                    SizedBox(
                      width: 32.w,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Text(
                "Get Tips",
                style: GoogleFonts.inter(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  height: 1.55.sp,
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      right: 32.w,
                    ),
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.w,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF2F4F7),
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(
                        color: const Color(0xFFE4E7EC),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        // Image.asset("assets/imgs/doctor.png"),
                        Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 24.h,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Connect with doctors &\nget suggestions",
                                style: GoogleFonts.inter(
                                  height: 1.42.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              Text(
                                "Connect now and get\nexpert insights",
                                style: GoogleFonts.inter(
                                  height: 1.42.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(
                                height: 24.h,
                              ),
                              TextButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  backgroundColor:
                                      const MaterialStatePropertyAll(
                                    Color(0xFF7F56D9),
                                  ),
                                  padding: MaterialStatePropertyAll(
                                    EdgeInsets.symmetric(
                                        vertical: 8.h, horizontal: 14.w),
                                  ),
                                  shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.r),
                                    ),
                                  ),
                                ),
                                child: Text(
                                  "View detail",
                                  style: GoogleFonts.inter(
                                    height: 1.42.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 16.w),
                        child: Image.asset("assets/imgs/doctor.png"),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 24.h,
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: 32.w,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Cycle Phases and Period",
                      style: GoogleFonts.inter(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        height: 1.55.sp,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "See all",
                          style: GoogleFonts.inter(
                            color: const Color(0xFF5925DC),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Icon(
                          Icons.chevron_right_rounded,
                          color: Color(0xFF5925DC),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
