import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:project/category/notifi_Caregory.dart';

class NotificationPage extends StatelessWidget {
  final List<QueryDocumentSnapshot> data = [];

  NotificationPage({required String text1, required String text2, required int text3}) {
    getData();
  }
// method to get data from firebaseStore
  Future<void> getData() async {
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection("requestservice").get();
    data.addAll(querySnapshot.docs);
  }

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
        body: ListView.builder(
          itemCount: data.length, 
          itemBuilder: (BuildContext context, int index) {
            
            String text1 = data[index].get("${data[index]['serviceName']}");
            String text2 = data[index].get("${data[index]['description']}");
            int    text3    = data[index].get("${data[index]['padget']}");
            return NotificationPage(
              text1: text1,
              text2: text2,
              text3: text3,

            );
          },
        ),
      ),
    );
  }
}
