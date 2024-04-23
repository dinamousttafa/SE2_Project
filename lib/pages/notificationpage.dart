import 'package:flutter/material.dart';
import 'package:project/category/notifi_Caregory.dart';

class NotificationPage extends StatelessWidget {
  NotificationPage();

  @override
  Widget build(BuildContext context) {
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
           
            notification(
              text1: 'My son',
              text2: 'Hamad ',
            )
            ,notification(
              text1: 'My little son',
              text2: 'Senosy ',
            ),
            notification(
              text1: 'My daughter',
              text2: 'dina ',
            ),
            notification(
              text1: 'My little daughter',
              text2: 'Renad ',
            )
          ],
        ),
      ),
    );
  }
}
