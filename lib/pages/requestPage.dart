import 'package:flutter/material.dart';

class requestPage extends StatelessWidget {
  const requestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'REQUESTING',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
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
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 70,
                      backgroundImage: AssetImage('images/logo.jpeg'),
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
                  decoration: InputDecoration(
                    hintText: " Write Your Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    fillColor: Colors.black.withOpacity(0.1),
                    filled: true,
                    prefixIcon: const Icon(Icons.person),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                child: TextField(
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
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF345069)),
                  child: Text(
                    'Request',
                    style: TextStyle(
                      fontSize: 20,color: Colors.white
                    ),
                  )),
              Spacer(
                flex: 8,
              )
            ]),
      ),
    );
  }
}
