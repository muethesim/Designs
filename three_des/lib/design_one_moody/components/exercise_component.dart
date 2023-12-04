import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ComponentExercise extends StatelessWidget {
  final Color clr;
  final String svg;
  final String txt;

  const ComponentExercise(
      {super.key, required this.clr, required this.svg, required this.txt});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 16.h, bottom: 16.h, left: 16.w),
      width: 151.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: clr,
      ),
      child: Row(
        children: [
          SvgPicture.asset(svg),
          SizedBox(width: 12.w),
          Text(txt),
        ],
      ),
    );
  }
}
