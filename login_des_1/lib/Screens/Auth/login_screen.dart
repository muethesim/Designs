import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenLogin extends StatelessWidget {
  const ScreenLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 10, 1, 113),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/img/main.png",
                    height: 158.h,
                  ),
                  SizedBox(
                    height: 51.h,
                  ),
                  Text(
                    "Welcome Back!",
                    style: GoogleFonts.raleway(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 27.h,
                  ),
                  Text(
                    "Please Log into your existing account",
                    style: GoogleFonts.raleway(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.r),
                          borderSide: const BorderSide(color: Colors.white)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.r),
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                      contentPadding: EdgeInsets.only(
                        top: 21.h,
                        bottom: 21.h,
                        left: 21.w,
                      ),
                      hintText: "Your Email",
                      hintStyle: GoogleFonts.raleway(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.r),
                          borderSide: const BorderSide(color: Colors.white)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.r),
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                      contentPadding: EdgeInsets.only(
                        top: 21.h,
                        bottom: 21.h,
                        left: 21.w,
                      ),
                      hintText: "Your Password",
                      hintStyle: GoogleFonts.raleway(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor: const MaterialStatePropertyAll(
                            Color.fromRGBO(43, 201, 144, 1),
                          ),
                          foregroundColor:
                              const MaterialStatePropertyAll(Colors.white),
                          padding: const MaterialStatePropertyAll(
                            EdgeInsets.symmetric(vertical: 18),
                          ),
                          textStyle: MaterialStatePropertyAll(
                            GoogleFonts.raleway(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                          )),
                      child: const Text(
                        "Log in",
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
