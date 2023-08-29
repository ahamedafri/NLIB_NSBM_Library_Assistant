import 'package:flutter/material.dart';
import 'package:nlib_library_assistant/utils/app_colors.dart';
//import 'loginstudent.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 250,
          height: 250,
          color: AppColors.BASE_COLOR,
          // child: Image.asset(
          //   'assets/register.png',

          // ),
        ),
      ),
    );
  }
}
