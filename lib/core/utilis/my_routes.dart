import 'package:flutter/material.dart';
import 'package:project/features/autho/forgetPassword/view/page/forgetPW.dart';
import 'package:project/features/autho/login/view/page/login.dart';
import 'package:project/features/autho/onboarding/view/page/onboarding.dart';
import 'package:project/features/autho/registration/view/page/registration_page.dart';
import 'package:project/features/autho/verification/view/page/verification_page.dart';
import 'package:project/pages/dashboard.dart';
import 'package:project/pages/homePage.dart';

class myRoutes {
  static List<Route> initRoutes(RouteSettings initialRoute) {
    return [
      MaterialPageRoute<dynamic>(
        builder: (BuildContext context) => const OnboardingScreen(),
      ),
      MaterialPageRoute<dynamic>(
        builder: (BuildContext context) => const RegestrationPage(),
      ),
      MaterialPageRoute<dynamic>(
        builder: (BuildContext context) =>  loginPage(),
      ),
     
    ];
  }

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute<dynamic>(
          builder: (_) => OnboardingScreen(),
        );
      case 'registration':
        return MaterialPageRoute<dynamic>(
          builder: (_) => RegestrationPage(),
        );
      case 'login':
        return MaterialPageRoute<dynamic>(
          builder: (_) => loginPage(),
        );
      case 'verification':
        return MaterialPageRoute<dynamic>(
          builder: (_) => verificationPage(),
        );
      case 'forgetPassword':
        return MaterialPageRoute<dynamic>(
          builder: (_) => forget_pw(),
        );
      case 'home':
        return MaterialPageRoute<dynamic>(
          builder: (_) => dashboard(),
        );
      default:
        // Handle unknown routes by navigating to the OnboardingScreen
        return MaterialPageRoute<dynamic>(
          builder: (_) => OnboardingScreen(),
        );
    }
  }
}