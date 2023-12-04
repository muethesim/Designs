import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ComponentCard extends StatelessWidget {
  final String image;
  final String type;
  final String msg;

  const ComponentCard(
      {super.key, required this.image, required this.type, required this.msg});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 326.w,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
          alignment: Alignment.topCenter,
        ),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.4427, 1.0348],
                    colors: [
                      Color.fromRGBO(0, 0, 0, 0.0), // Transparent black
                      Colors.black,
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 12.h,
              horizontal: 24.w,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 57.h,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.w,
                    vertical: 4.h,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFEF0C7),
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                  child: Text(
                    type,
                    style: GoogleFonts.inter(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF93370D),
                    ),
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  msg,
                  style: GoogleFonts.inter(
                    fontSize: 16.sp,
                    height: 1.5.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFFFCFCFD),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
