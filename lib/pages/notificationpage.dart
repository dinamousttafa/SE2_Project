import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project/category/notifi_Caregory.dart';

class NotificationPage extends StatelessWidget {
  NotificationPage();

  @override
  Widget build(BuildContext context) {
    List<Widget> noti_list = [];

    for (int i = 0; i < noti_list.length; i++) {
      noti_list.add(
        notification(
          text1: 'Developer',
          text2: 'Amgoood',
        ),
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Notification',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: ListView(
          children: [
            notification(
              text1: 'Here what will be added',
              text2: 'Amged Elsayed',
            ),
            for (int i = 0; i < noti_list.length; i++) noti_list[i],
          ],
        ),
      ),
    );
  }
}
