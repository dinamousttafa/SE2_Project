import 'package:flutter/material.dart';
import 'package:project/category/notifi_Caregory.dart';
import 'package:project/pages/discribtion.dart';
import 'package:project/pages/homePage.dart';
import 'package:project/pages/notificationpage.dart';
import 'package:project/pages/profilePage.dart';
import 'package:rolling_bottom_bar/rolling_bottom_bar.dart';
import 'package:rolling_bottom_bar/rolling_bottom_bar_item.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(NotificationPage());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _pageControlller = PageController();

  @override
  void dispose() {
    _pageControlller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            " Web Service ",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Color(0xFF345069),
        ),
        body: PageView(
          controller: _pageControlller,
          children: const <Widget>[
            HomePage(),
            discrebtion(),
            ProfilePage(),
          ],
        ),
        extendBody: true,
        bottomNavigationBar: RollingBottomBar(
          color: const Color.fromARGB(255, 255, 240, 219),
          controller: _pageControlller,
          flat: true,
          useActiveColorByDefault: false,
          items: const [
            RollingBottomBarItem(Icons.home,
                label: 'Home', activeColor: Color.fromARGB(255, 0, 0, 0)),
            RollingBottomBarItem(Icons.chat_sharp,
                label: 'Discribe', activeColor: Color.fromARGB(255, 0, 0, 0)),
            RollingBottomBarItem(Icons.sticky_note_2,
                label: 'Person', activeColor: Color.fromARGB(255, 0, 0, 0)),
          ],
          enableIconRotation: true,
          onTap: (index) {
            _pageControlller.animateToPage(
              index,
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeOut,
            );
          },
        ),
      ),
    );
  }
}
