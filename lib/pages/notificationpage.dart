import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class NotificationPage extends StatefulWidget {
  NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  final List<QueryDocumentSnapshot> data = [];
// method to get data from firebaseStore
  Future<void> getData() async {
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection("requestservice").get();
    setState(() {
      data.addAll(querySnapshot.docs);
    });
  }
  @override
  void initState() {
    getData();
    super.initState();
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
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Container(
                height: 220,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      color: Colors.black.withOpacity(0.2),
                      offset: const Offset(0, 1),
                    )
                  ],
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Colors.blue,
                    width: 1,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.blueAccent,
                            width: 2,
                          ),
                        ),
                        child: const Icon(
                          Icons.notification_add,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(bottom: 10),
                                child: Text(
                                  'New Notification',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Text(
                                data[index]["description"],
                                style: const TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(height: 12),
                              Row(
                                children: [
                                  Container(
                                    width: 44,
                                    height: 44,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                        color: Colors.blue,
                                      ),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: const Icon(Icons.person),
                                    ),
                                  ),
                                  const SizedBox(width: 12),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        data[index]["servicename"],
                                        style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              const Text(
                                'Poly verse',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                              ),
                              const Spacer(
                                flex: 1,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 40,
                                    width: 100,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.green),
                                      onPressed: () {},
                                      child: const Text(
                                        "Accept",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255)),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 40,
                                    width: 100,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.red),
                                      onPressed: () {},
                                      child: const Text(
                                        "Reject",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255)),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
