
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
        onGenerateRoute: myRoutes.generateRoute, 
      ),
    ),
  );
}