
import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project/core/utilis/my_routes.dart';
import 'package:project/features/autho/splash/view/page/splash.dart';
import 'package:project/firebase_options.dart';
import 'package:project/pages/dashboard.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // runApp(
  //   DevicePreview(
  //     enabled: true,
  //     builder: (context) => MaterialApp(
  //       home: Splash(), // Show Splash screen initially
  //       builder: DevicePreview.appBuilder,
  //       useInheritedMediaQuery: true,
  //       onGenerateRoute: myRoutes.onGenerateRoute,
  //     ),
  //   ),
  // );

  ///amged main

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Navigator(
      pages:  [
        MaterialPage(child: dashboard()),
      ],
      onPopPage: (route, result) => route.didPop(result),
    ),
  ));
}
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