
///dinaaz main
import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project/core/utilis/my_routes.dart';
import 'package:project/features/autho/splash/view/page/splash.dart';
import 'package:project/firebase_options.dart';



void main() async {
 WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MaterialApp(
        home: Splash(), // Show Splash screen initially
        builder: DevicePreview.appBuilder,
        useInheritedMediaQuery: true,
        onGenerateRoute: myRoutes.onGenerateRoute,
      ),
    ),
  );
}



///amged main

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
////////////////////////////////////////////////////////renad///////////////////////////////////////////////////


// import 'package:flutter/material.dart';
// import 'views/webApplactionsCategory.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: webCategory(),
//     );
//   }
// }