import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:three_des/design_two_workout/components/exercise_card_component.dart';

class ScreenWorkOut extends StatefulWidget {
  const ScreenWorkOut({super.key});

  @override
  State<ScreenWorkOut> createState() => _ScreenWorkOutState();
}

class _ScreenWorkOutState extends State<ScreenWorkOut>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  List cards = [
    exerciseCard("7 days", "Morning Yoga", "Improve mental focus.", "30 mins",
        "assets/imgs/exercise1.png"),
    exerciseCard("3 days", "Plank Exercise", "Improve posture and stability.",
        "30 mins", "assets/imgs/exercise2.png"),
    exerciseCard("7 days", "Morning Yoga", "Improve mental focus.", "30 mins",
        "assets/imgs/exercise2.png"),
    exerciseCard("3 days", "Plank Exercise", "Improve posture and stability.",
        "30 mins", "assets/imgs/exercise1.png"),
  ];

  @override
  void initState() {
    _controller = TabController(length: 4, vsync: this, initialIndex: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
          dotIndicatorColor: const Color.fromRGBO(54, 63, 114, 1),
          onTap: (index) {},
          items: [
            DotNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/svg/home.svg",
                colorFilter: const ColorFilter.mode(
                    Color.fromRGBO(54, 63, 114, 1), BlendMode.srcIn),
              ),
            ),
            DotNavigationBarItem(
              icon: SvgPicture.asset("assets/svg/nav.svg"),
            ),
            DotNavigationBarItem(
              icon: SvgPicture.asset("assets/svg/stat.svg"),
            ),
            DotNavigationBarItem(
              icon: SvgPicture.asset("assets/svg/user.svg"),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 40.h, right: 32.w, left: 32.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/imgs/avatar.png",
                      height: 56.422.h,
                    ),
                    SizedBox(
                      width: 12.h,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello, Jade",
                          style: GoogleFonts.inter(
                            fontSize: 16.sp,
                            height: 1.5.h,
                          ),
                        ),
                        Text(
                          "Ready to workout?",
                          style: GoogleFonts.inter(
                            fontSize: 18.sp,
                            height: 1.55.h,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Icon(
                  FeatherIcons.bell,
                ),
              ],
            ),
            SizedBox(
              height: 27.h,
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: const Color.fromRGBO(248, 249, 252, 1),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.h),
                child: IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                "assets/svg/heart.svg",
                                height: 16.h,
                              ),
                              Text(
                                "Heart Rate",
                                style: GoogleFonts.inter(
                                  fontSize: 12.sp,
                                ),
                              )
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "81",
                                style: GoogleFonts.inter(
                                  fontSize: 18.sp,
                                  height: 1.55.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "BPM",
                                style: GoogleFonts.inter(
                                  fontSize: 14.sp,
                                  height: 1.55.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      VerticalDivider(
                        thickness: 1.w,
                        color: const Color.fromRGBO(217, 217, 217, 1),
                      ),
                      Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                "assets/svg/list.svg",
                                height: 16.h,
                              ),
                              Text(
                                "To-do",
                                style: GoogleFonts.inter(
                                  fontSize: 12.sp,
                                ),
                              )
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "32,5",
                                style: GoogleFonts.inter(
                                  fontSize: 18.sp,
                                  height: 1.55.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "%",
                                style: GoogleFonts.inter(
                                  fontSize: 14.sp,
                                  height: 1.55.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      VerticalDivider(
                        thickness: 1.w,
                        color: const Color.fromRGBO(217, 217, 217, 1),
                      ),
                      Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,  
                            children: [
                              SvgPicture.asset(
                                "assets/svg/flame.svg",
                                height: 16.h,
                              ),
                              Text(
                                "Calo",
                                style: GoogleFonts.inter(
                                  fontSize: 12.sp,
                                ),
                              )
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "1000",
                                style: GoogleFonts.inter(
                                  fontSize: 18.sp,
                                  height: 1.55.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "Cal",
                                style: GoogleFonts.inter(
                                  fontSize: 14.sp,
                                  height: 1.55.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Text(
              "Workout Programs",
              style: GoogleFonts.inter(
                fontSize: 18.sp,
                height: 1.55.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Stack(
              fit: StackFit.passthrough,
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          color: const Color.fromRGBO(241, 241, 241, 1),
                          width: 1.h),
                    ),
                  ),
                ),
                TabBar(
                  controller: _controller,
                  labelPadding: const EdgeInsets.all(0),
                  padding: const EdgeInsets.all(0),
                  unselectedLabelColor: const Color.fromRGBO(102, 112, 133, 1),
                  labelColor: const Color.fromRGBO(54, 63, 114, 1),
                  labelStyle: GoogleFonts.inter(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    height: 1.5.sp,
                  ),
                  indicatorColor: const Color.fromRGBO(54, 63, 114, 1),
                  indicatorWeight: 2.sp,
                  tabs: const [
                    Tab(
                      text: "All Type",
                    ),
                    Tab(
                      text: "Full Body",
                    ),
                    Tab(
                      text: "Upper",
                    ),
                    Tab(
                      text: "Lower",
                    ),
                  ],
                ),
              ],
            ),
            // SizedBox(
            //   height: 200.h,
            //   child: TabBarView(
            //     controller: _controller,
            //     children: [
            //       Text('Cam'),
            //       Text("HELLO"),
            //       Text('Status'),
            //       Text('Calls'),
            //     ],
            //   ),
            // )
            Expanded(
              child: TabBarView(
                controller: _controller,
                children: [
                  ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    padding: EdgeInsets.symmetric(vertical: 12.h),
                    itemCount: cards.length,
                    itemBuilder: (ctx, index) {
                      return cards[index];
                    },
                  ),
                  ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    padding: EdgeInsets.symmetric(vertical: 12.h),
                    itemCount: 2,
                    itemBuilder: (ctx, index) {
                      return cards[index];
                    },
                  ),
                  ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    padding: EdgeInsets.symmetric(vertical: 12.h),
                    itemCount: 1,
                    itemBuilder: (ctx, index) {
                      return cards[index];
                    },
                  ),
                  ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    padding: EdgeInsets.symmetric(vertical: 12.h),
                    itemCount: 3,
                    itemBuilder: (ctx, index) {
                      return cards[index];
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
