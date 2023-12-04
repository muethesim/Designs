import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

Widget exerciseCard(days, name, use, time, img) {
  return Container(
    padding: EdgeInsets.all(24.h),
    margin: EdgeInsets.symmetric(vertical: 12.h),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8.r),
      color: const Color.fromRGBO(248, 249, 252, 1),
    ),
    child: Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(
                12.h,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(999.r),
                  color: const Color(0xFFFCFCFD),
                  border: Border.all(
                    color: const Color(0xFFE4E7EC),
                  )),
              child: Text(
                days,
                style: GoogleFonts.inter(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  height: 1.42.sp,
                ),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Text(
              name,
              style: GoogleFonts.inter(
                fontSize: 20.sp,
                height: 1.5.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              use,
              style: GoogleFonts.inter(
                fontSize: 12.sp,
                height: 1.5.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 11.h,
            ),
            Row(
              children: [
                SvgPicture.asset("assets/svg/clock.svg"),
                SizedBox(
                  width: 5.w,
                ),
                Text(
                  time,
                  style: GoogleFonts.inter(
                    fontSize: 12.sp,
                  ),
                ),
              ],
            ),
          ],
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.bottomRight,
            child: Image.asset(
              img,
            ),
          ),
        ),
      ],
    ),
  );
}
