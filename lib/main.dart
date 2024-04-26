// import 'package:flutter/material.dart';
// import 'package:project/category/bookCategory.dart';
// import 'package:project/category/notifi_Caregory.dart';
// // import 'package:project/pages/bookingPage.dart';
// import 'package:project/pages/bookingPage.dart';
// import 'package:project/pages/homePage.dart';
// import 'package:project/pages/notificationpage.dart';

// import 'package:project/pages/requestPage.dart';
// import 'package:rolling_bottom_bar/rolling_bottom_bar.dart';
// import 'package:rolling_bottom_bar/rolling_bottom_bar_item.dart';

// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   MyApp({super.key});
//   final _pageControlller = PageController();

//   @override
//   void dispose() {
//     _pageControlller.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text(
//             " Web Service ",
//             style: TextStyle(
//                 fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
//           ),
//           backgroundColor: Color(0xFF345069),
//         ),
//         body: PageView(
//           controller: _pageControlller,
//           children: const <Widget>[
//             HomePage(),
//             BookingPage(),
//           ],
//         ),
//         extendBody: true,
//         bottomNavigationBar: RollingBottomBar(
//           color: const Color.fromARGB(255, 255, 240, 219),
//           controller: _pageControlller,
//           flat: true,
//           useActiveColorByDefault: false,
//           items: const [
//             RollingBottomBarItem(Icons.home,
//                 label: 'Home', activeColor: Color.fromARGB(255, 0, 0, 0)),
//             RollingBottomBarItem(Icons.sticky_note_2,
//                 label: 'Booking', activeColor: Color.fromARGB(255, 0, 0, 0)),
//           ],
//           enableIconRotation: true,
//           onTap: (index) {
//             _pageControlller.animateToPage(
//               index,
//               duration: const Duration(milliseconds: 400),
//               curve: Curves.easeOut,
//             );
//           },
//         ),
//       ),
//     );
//   }
// }





//dinnna'z main
// ignore_for_file: unused_local_variable, non_constant_identifier_names, prefer_const_constructors, camel_case_types

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:project/features/autho/login/view/page/login.dart';
import 'package:project/features/autho/onboarding/view/page/onboarding.dart';
import 'package:project/features/autho/registration/view/page/registration_page.dart';
import 'package:project/features/autho/splash/view/page/splash.dart';
import 'package:project/features/autho/verification/view/page/verification_page.dart';
import 'package:shared_preferences/shared_preferences.dart';


void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // Ensure that Flutter is initialized

  // Initialize SharedPreferences
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  bool onBoarding = sharedPreferences.getBool('onboarding') ?? false;

  runApp( se2(),);
}

class se2 extends StatelessWidget {
  const se2 ({super.key});

  @override
  Widget build(BuildContext context) {
    //Splash()
    return MaterialApp(
      home:Splash());
  }
}

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
        builder: (BuildContext context) => const verificationPage(),
      ),
    ];
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'login':
        return MaterialPageRoute<dynamic>(
            builder: (BuildContext context) =>  loginPage());
      case 'registration':
        return MaterialPageRoute<dynamic>(
            builder: (BuildContext context) =>  RegestrationPage());

      default:
        return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) =>  OnboardingScreen(),
        );
    }
  }
}





