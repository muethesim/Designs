import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login_des_1/Screens/Auth/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, widget) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ScreenLogin(),
      ),
      designSize: const Size(375, 667),
    );
  }
}
