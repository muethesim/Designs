import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:three_des/design_three_alicecare/alicecare_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (ctx, wdgt) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ScreenAliceCare(),
      ),
      designSize: const Size(390, 844),
    );
  }
}
