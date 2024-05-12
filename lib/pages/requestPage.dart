import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:project/pages/dashboard.dart';

class requestPage extends StatelessWidget {
  TextEditingController serviceName = TextEditingController();
  TextEditingController padget = TextEditingController();
  TextEditingController description = TextEditingController();
  requestPage({super.key});

  @override
  Widget build(BuildContext context) {
    CollectionReference service =
        FirebaseFirestore.instance.collection('requestservice');
    Future<void> addService() {
      // Call the user's CollectionReference to add a new user
      return service
          .add({
            'servicename': serviceName.text,
            'Badget': padget.text,
            'description': description.text
          })
          .then((value) => print("sevice Added"))
          .catchError((error) => print("Failed to add sevice: $error"));
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
           actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return dashboard();
              }));
            },
            icon: Icon(Icons.arrow_back, color: Colors.white,),
          ),
        ],
          title: Center(
            child: Text(
              'REQUESTING',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white),
              
            ),
          ),
          backgroundColor: Color(0xFF345069),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Center(
                  child: CircleAvatar(
                    radius: 73,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      radius: 70,
                      backgroundImage: AssetImage('assets/images/logo.jpeg'),
                    ),
                  ),
                ),
              ),
              Spacer(
                flex: 1,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                child: TextField(
                  controller: serviceName,
                  decoration: InputDecoration(
                    hintText: " Write Your service Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    fillColor: Colors.black.withOpacity(0.1),
                    filled: true,
                    prefixIcon: const Icon(Icons.post_add_rounded),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                child: TextField(
                  controller: padget,
                  decoration: InputDecoration(
                      hintText: " Your Padget ? ",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      fillColor: Colors.black.withOpacity(0.1),
                      filled: true,
                      prefixIcon: const Icon(Icons.money)),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                child: TextField(
                  controller: description,
                  decoration: InputDecoration(
                      hintText: " the Discribtion of your App",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      fillColor: Colors.black.withOpacity(0.1),
                      filled: true,
                      prefixIcon: const Icon(Icons.note_add)),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    addService();
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => dashboard()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF345069)),
                  child: Text(
                    'Request',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )),
              Spacer(
                flex: 8,
              )
            ]),
      ),
    );
  }
}
