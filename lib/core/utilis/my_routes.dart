import 'package:flutter/material.dart';
import 'package:project/features/autho/forgetPassword/view/page/forgetPW.dart';
import 'package:project/features/autho/login/view/page/login.dart';
import 'package:project/features/autho/onboarding/view/page/onboarding.dart';
import 'package:project/features/autho/registration/view/page/registration_page.dart';
import 'package:project/features/autho/verification/view/page/verification_page.dart';
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

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'login':
        return MaterialPageRoute<dynamic>(
            builder: (BuildContext context) => loginPage());
      case 'registration':
        return MaterialPageRoute<dynamic>(
            builder: (BuildContext context) => RegestrationPage());

      case 'verification':
        return MaterialPageRoute<dynamic>(
            builder: (BuildContext context) => verificationPage());
      case 'forgetPassword':
        return MaterialPageRoute<dynamic>(
            builder: (BuildContext context) => forget_pw());
     case 'home':
        return MaterialPageRoute<dynamic>(
            builder: (BuildContext context) =>HomePage());

      default:
        return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => OnboardingScreen(),
        );
    }
  }
}