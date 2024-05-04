// ignore_for_file: use_build_context_synchronously

import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project/features/autho/login/view/page/login.dart';
import 'package:project/features/autho/onboarding/view/page/onboarding.dart';
import 'package:project/features/autho/registration/view/page/registration_page.dart';
import 'package:project/features/autho/verification/view/page/verification_page.dart';
import 'package:project/pages/homePage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigateToHome(); // No need to pass context here
  }

  _navigateToHome() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    bool onboardingCompleted = sharedPreferences.getBool('onboarding') ?? false;

    await Future.delayed(const Duration(seconds: 3));

    if (onboardingCompleted) {
      if (FirebaseAuth.instance.currentUser != null &&
          FirebaseAuth.instance.currentUser!.emailVerified) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );
      
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => loginPage()),
        );
      }
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const OnboardingScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/images/splash.jpg',
          width: screenSize.width,
          height: screenSize.height,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
