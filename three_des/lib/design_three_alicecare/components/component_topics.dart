import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ComponentTopic extends StatelessWidget {
  final Color bgColor;
  final Color borderColor;
  final Color textColor;
  final String txt;

  const ComponentTopic({
    super.key,
    required this.txt,
    this.bgColor = Colors.transparent,
    this.borderColor = const Color(0xFFE4E7EC),
    this.textColor = const Color(0xFF667085),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 8.h,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(999),
        color: bgColor, //color1
        border: Border.all(
          color: borderColor, //color2
        ),
      ),
      child: Text(
        txt,
        style: GoogleFonts.inter(
          fontSize: 16.sp,
          height: 1.5.sp,
          fontWeight: FontWeight.w500,
          color: textColor,
        ),
      ),
    );
  }
}
